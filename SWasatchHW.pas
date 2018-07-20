////////////////////////////////////////////////////////////////////////////////
// MIT License
// 
// Copyright (c) 2018 Wasatch Photonics and Friedrich Menges (Spectroscopy.Ninja)
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
////////////////////////////////////////////////////////////////////////////////

unit SWasatchHW;

interface

uses
  Windows, SysUtils, Classes, Forms, Controls, Dialogs, Graphics, Messages, ClipBrd, ShellAPI, Math,
    WasatchNET_TLB, ActiveX;

type
  coeff  = array of double;
  Pcoeff = ^coeff;

var
  numberOfSpectrometers  : Integer;

  // EEPROM
  WP_excitationNM: SmallInt;
  WP_ExternalTriggerMode: Integer;
  WP_DetectorTemperatureMin: Double;
  WP_DetectorTemperatureMax: Double;
  WP_coeff1 : Double;
  WP_coeff2 : Double;
  WP_coeff3 : Double;
  WP_coeff4 : Double;

  WP_badpixels: Array of SmallInt;

  // FPGA Options
  WP_LaserExists: Boolean;
  WP_TECSupported: Boolean;
  WP_UseTECCooling: Boolean;

  // spectrometer state
  WP_scanAveraging: Integer;
  WP_boxcarHalfWidth: Integer;
  WP_laserpower: Integer;
  WP_integrationtime: Integer = 100;
  WPBadpixelInterp : Boolean;

  // spectrometer readings
  WP_Temperature: Double;

  // unsupported features
  WP_CorrDetNonlinearity: Integer;
  WP_CorrElectricalDark: Integer;
  WP_AutoToggleStrobeLamp: Integer;

  // objects
  WP_wrapper: TDriverVBAWrapper;
  WP_driver: IDriver;
  WP_Logger: ILogger;
  WP_spectrometer: ISpectrometer;
  WP_Coefficients: Pcoeff;
  InternalCoeffList: TList;

////////////////////////////////////////////////////////////////////////////////
// function prototypes
////////////////////////////////////////////////////////////////////////////////

procedure RefreshWasatchDeviceList;
procedure UpdateMemo;
function ConnectWasatch(const DeviceIndex:Integer) :Boolean;
procedure SetParamsWasatch(const DeviceIndex:Integer);
function SetScanAveragingWasatch(const avenumber:Integer):Boolean;
function SetBoxCarWidthWasatch(const halfwidth:Integer):Boolean;
function SetTemperatureWasatch(const temperature:Double):Boolean;
procedure SetExposureTimeWasatch(const DeviceIndex, exptime:Integer);
procedure SetLaserPowerWasatch(const laserpower:Integer);
function GetLaserPowerWasatch:Integer;
procedure RunLaserWasatch(const value:Boolean);
function GetLaserStateWasatch:Boolean;
procedure GetScanWasatch(const DeviceIndex:Integer);
function DisConnectWasatch:Boolean;

////////////////////////////////////////////////////////////////////////////////
implementation
////////////////////////////////////////////////////////////////////////////////

uses WasatchDemo;

procedure RefreshWasatchDeviceList;
var
  i:Integer;
  schtring: String;
begin
  if not Assigned(WP_wrapper) then
  begin
    WP_wrapper:= TDriverVBAWrapper.Create(MainWin);
    WP_driver:=WP_wrapper.Instance;
    // WP_Logger := WP_driver.Logger;
    // WP_Logger.level := LogLevel_DEBUG;
    // WP_Logger.setPathname('C:\temp\logfile.txt');
  end;

  WP_driver.closeAllSpectrometers();
  numberOfSpectrometers := WP_driver.openAllSpectrometers();

  if numberOfSpectrometers > 0 then
  begin
    for i:= 0 to numberOfSpectrometers-1 do
    begin
      WP_spectrometer := WP_driver.getSpectrometer(i);
      schtring := WP_spectrometer.model;
      schtring := schtring + '  s/n: ' + WP_spectrometer.serialNumber;
      MainWin.ComboBox1.Items.Add(schtring);
    end;
  end;

  InternalCoeffList := TList.Create;

  for i:= 0 to numberOfSpectrometers-1 do
  begin
    New(WP_Coefficients);
    SetLength(WP_Coefficients^,4);
    InternalCoeffList.add(WP_Coefficients);
  end;
end;

procedure UpdateMemo;
var
  f: Single;
  i: Integer;
  n: SmallInt;
begin
  if MainWin.Connected then
  begin
    WP_spectrometer := WP_driver.getSpectrometer(MainWin.DeviceIndex);

    Mainwin.Memo1.Lines.Clear;
    Mainwin.Memo1.Lines.Add('Spectrometer:');
    Mainwin.Memo1.Lines.Add('  pixels:               ' + IntToStr  (WP_spectrometer.pixels));
    Mainwin.Memo1.Lines.Add('  model:                ' +            WP_spectrometer.model);
    Mainwin.Memo1.Lines.Add('  serialNumber:         ' +            WP_spectrometer.serialNumber);
    Mainwin.Memo1.Lines.Add('  integrationTimeMS:    ' + IntToStr  (WP_spectrometer.integrationTimeMS));
    Mainwin.Memo1.Lines.Add('  integrationTimeMS:    ' + IntToStr  (WP_spectrometer.integrationTimeMS));
    Mainwin.Memo1.Lines.Add('  scanAverage:          ' + IntToStr  (WP_spectrometer.scanAveraging));
    Mainwin.Memo1.Lines.Add('  boxcarHalfWidth:      ' + IntToStr  (WP_spectrometer.boxcarHalfWidth));
    Mainwin.Memo1.Lines.Add('  isArm:                ' + BoolToStr (WP_spectrometer.isARM, true));
    Mainwin.Memo1.Lines.Add('  hasLaser:             ' + BoolToStr (WP_spectrometer.hasLaser, true));
    Mainwin.Memo1.Lines.Add('  getIntegrationTimeMS: ' + IntToStr  (WP_spectrometer.getIntegrationTimeMS));
    Mainwin.Memo1.Lines.Add('  getFirmwareRev:       ' +            WP_spectrometer.getFirmwareRev);
    Mainwin.Memo1.Lines.Add('  getFPGARev:           ' +            WP_spectrometer.getFPGARev);
    Mainwin.Memo1.Lines.Add('  getCCDGain:           ' + FloatToStr(WP_spectrometer.getCCDGain));
    Mainwin.Memo1.Lines.Add('  getCCDOffset:         ' + IntToStr  (WP_spectrometer.getCCDOffset));
    Mainwin.Memo1.Lines.Add('  getLineLength:        ' + IntToStr  (WP_spectrometer.getLineLength));

    Mainwin.Memo1.Lines.Add('FeatureIdentification:');
    Mainwin.Memo1.Lines.Add('  firmwarePartNum:      ' +            WP_spectrometer.FeatureIdentification.firmwarePartNum);
    Mainwin.Memo1.Lines.Add('  firmwareDesc:         ' +            WP_spectrometer.FeatureIdentification.firmwareDesc);
    Mainwin.Memo1.Lines.Add('  isSupported:          ' + BoolToStr (WP_spectrometer.FeatureIdentification.isSupported, true));
    Mainwin.Memo1.Lines.Add('  defaultPixels:        ' + IntToStr  (WP_spectrometer.FeatureIdentification.defaultPixels));
    Mainwin.Memo1.Lines.Add('  spectraBlockSize:     ' + IntToStr  (WP_spectrometer.FeatureIdentification.spectraBlockSize));

    Mainwin.Memo1.Lines.Add('FPGAOptions:');
    Mainwin.Memo1.Lines.Add('  integrationTimeRes:   ' + IntToStr  (WP_spectrometer.FPGAOptions.integrationTimeResolution));
    Mainwin.Memo1.Lines.Add('  dataHeader:           ' + IntToStr  (WP_spectrometer.FPGAOptions.dataHeader));
    Mainwin.Memo1.Lines.Add('  hasCFSelect:          ' + BoolToStr (WP_spectrometer.FPGAOptions.hasCFSelect));
    Mainwin.Memo1.Lines.Add('  laserType:            ' + IntToStr  (WP_spectrometer.FPGAOptions.laserType));
    Mainwin.Memo1.Lines.Add('  laserControl:         ' + IntToStr  (WP_spectrometer.FPGAOptions.laserControl));
    Mainwin.Memo1.Lines.Add('  hasAreaScan:          ' + BoolToStr (WP_spectrometer.FPGAOptions.hasAreaScan));
    Mainwin.Memo1.Lines.Add('  hasActualIntegTime:   ' + BoolToStr (WP_spectrometer.FPGAOptions.hasActualIntegTime));
    Mainwin.Memo1.Lines.Add('  hasHorizBinning:      ' + BoolToStr (WP_spectrometer.FPGAOptions.hasHorizBinning));

    Mainwin.Memo1.Lines.Add('ModelConfig:');
    Mainwin.Memo1.Lines.Add(' EEPROM Page 0:');
    Mainwin.Memo1.Lines.Add('  model:                ' +            WP_spectrometer.ModelConfig.model);
    Mainwin.Memo1.Lines.Add('  serialNumber:         ' +            WP_spectrometer.ModelConfig.serialNumber);
    Mainwin.Memo1.Lines.Add('  baudRate:             ' + IntToStr  (WP_spectrometer.ModelConfig.baudRate));
    Mainwin.Memo1.Lines.Add('  hasCooling:           ' + BoolToStr (WP_spectrometer.ModelConfig.hasCooling, true));
    Mainwin.Memo1.Lines.Add('  hasBattery:           ' + BoolToStr (WP_spectrometer.ModelConfig.hasBattery, true));
    Mainwin.Memo1.Lines.Add('  hasLaser:             ' + BoolToStr (WP_spectrometer.ModelConfig.hasLaser, true));
    Mainwin.Memo1.Lines.Add('  excitationNM:         ' + IntToStr  (WP_spectrometer.ModelConfig.excitationNM));
    Mainwin.Memo1.Lines.Add('  slitSizeUM:           ' + IntToStr  (WP_spectrometer.ModelConfig.slitSizeUM));

    Mainwin.Memo1.Lines.Add(' EEPROM Page 1');

    for i := 0 to 3 do
    begin
      SafeArrayGetElement(WP_spectrometer.ModelConfig.wavecalCoeffs, i, f);
      Mainwin.Memo1.Lines.Add(Format('  wavecalCoeffs[%d]:     %f', [i, f]));
    end;

    for i := 0 to 2 do
    begin
      SafeArrayGetElement(WP_spectrometer.ModelConfig.degCToDACCoeffs, i, f);
      Mainwin.Memo1.Lines.Add(Format('  degCToDACCoeffs[%d]:   %f', [i, f]));
    end;

    Mainwin.Memo1.Lines.Add('  detectorTempMin:      ' + IntToStr  (WP_spectrometer.ModelConfig.detectorTempMin));
    Mainwin.Memo1.Lines.Add('  detectorTempMax:      ' + IntToStr  (WP_spectrometer.ModelConfig.detectorTempMax));

    for i := 0 to 2 do
    begin
      SafeArrayGetElement(WP_spectrometer.ModelConfig.adcToDegCCoeffs, i, f);
      Mainwin.Memo1.Lines.Add(Format('  adcToDegCCoeffs[%d]:   %f', [i, f]));
    end;

    Mainwin.Memo1.Lines.Add('  thermistorRes298K:    ' + FloatToStr(WP_spectrometer.ModelConfig.thermistorResistanceAt298K));
    Mainwin.Memo1.Lines.Add('  thermistorBeta:       ' + FloatToStr(WP_spectrometer.ModelConfig.thermistorBeta));
    Mainwin.Memo1.Lines.Add('  calibrationDate:      ' +            WP_spectrometer.ModelConfig.calibrationDate);
    Mainwin.Memo1.Lines.Add('  calibrationBy:        ' +            WP_spectrometer.ModelConfig.calibrationBy);

    Mainwin.Memo1.Lines.Add(' EEPROM Page 2');
    Mainwin.Memo1.Lines.Add('  detectorName:         ' +            WP_spectrometer.ModelConfig.detectorName);
    Mainwin.Memo1.Lines.Add('  activePixelsHoriz:    ' + IntToStr  (WP_spectrometer.ModelConfig.activePixelsHoriz));
    Mainwin.Memo1.Lines.Add('  activePixelsVert:     ' + IntToStr  (WP_spectrometer.ModelConfig.activePixelsVert));
    Mainwin.Memo1.Lines.Add('  minIntegrationTimeMS: ' + IntToStr  (WP_spectrometer.ModelConfig.minIntegrationTimeMS));
    Mainwin.Memo1.Lines.Add('  maxIntegrationTimeMS: ' + IntToStr  (WP_spectrometer.ModelConfig.maxIntegrationTimeMS));
    Mainwin.Memo1.Lines.Add('  actualHoriz:          ' + IntToStr  (WP_spectrometer.ModelConfig.actualHoriz));
    Mainwin.Memo1.Lines.Add('  roiHorizStart:        ' + IntToStr  (WP_spectrometer.ModelConfig.ROIHorizStart));
    Mainwin.Memo1.Lines.Add('  roiHorizEnd:          ' + IntToStr  (WP_spectrometer.ModelConfig.ROIHorizEnd));

    Mainwin.Memo1.Lines.Add(' EEPROM Page 3');

    Mainwin.Memo1.Lines.Add(' EEPROM Page 4');
    Mainwin.Memo1.Lines.Add('  userText:             ' +            WP_spectrometer.ModelConfig.userText);

    Mainwin.Memo1.Lines.Add(' EEPROM Page 5');

    for i := 0 to 14 do
    begin
      SafeArrayGetElement(WP_spectrometer.ModelConfig.badPixels, i, n);
      Mainwin.Memo1.Lines.Add(Format('  badPixels[%02d]:        %d', [i, n]));
    end;
  end;
end;

function ConnectWasatch(const DeviceIndex:Integer) :Boolean;
var
  i: Integer;
  CalCoefficients:Pcoeff;
  Bounds: array[0..0] of TSafeArrayBound;
  WPCoefficients: PSafeArray;
  hresultValue: HResult;
begin
  // WP_Logger := WP_driver.Logger;
  // WP_Logger.level := LogLevel_DEBUG;
  // WP_Logger.setPathname('C:\temp\logfile.txt');
  if not Assigned(WP_wrapper) then
  begin
    WP_wrapper:= TDriverVBAWrapper.Create(MainWin);
    WP_driver:=WP_wrapper.Instance;
    WP_driver.closeAllSpectrometers();
    WP_driver.openAllSpectrometers();
  end;

  WP_spectrometer:= WP_driver.getSpectrometer(DeviceIndex);
  Result:=false;

  WP_coeff1:=0;
  WP_coeff2:=0;
  WP_coeff3:=0;
  WP_coeff4:=0;
  WP_CorrDetNonlinearity:=1;
  WP_CorrElectricalDark:=1;
  WP_AutoToggleStrobeLamp:=0;
  WP_TECSupported:=false;
  WP_UseTecCooling:=false;
  WP_Temperature:=10;
  WP_DetectorTemperatureMin:=10;
  WP_DetectorTemperatureMax:=20;
  WP_ExternalTriggerMode:=0;
  WP_laserpower:=0;
  WPBadpixelInterp:=true;

  SetParamsWasatch(DeviceIndex);
  WPCoefficients:=WP_spectrometer.ModelConfig.Get_wavecalCoeffs;

  if InternalCoeffList.Count=0 then
  begin
    for i:= 0 to numberOfSpectrometers-1 do
    begin
      New(WP_Coefficients);
      SetLength(WP_Coefficients^,4);
      InternalCoeffList.add(WP_Coefficients);
    end;
  end;

  WP_excitationNM:=WP_spectrometer.ModelConfig.excitationNM;
  if WP_excitationNM = -1 then  // workaround for 2Byte-Offset problem
    WP_excitationNM:=WP_spectrometer.ModelConfig.slitSizeUM;

  CalCoefficients := InternalCoeffList[DeviceIndex];
  CalCoefficients^[0] := WP_coeff1;
  CalCoefficients^[1] := WP_coeff2;
  CalCoefficients^[2] := WP_coeff3;
  CalCoefficients^[3] := WP_coeff4;
  WP_LaserExists:=WP_spectrometer.hasLaser;
  if WP_LaserExists then
    MainWin.Chart1.BottomAxis.Title.Caption:='Raman Shift [1/cm]'
  else
    MainWin.Chart1.BottomAxis.Title.Caption:='Wavelength [nm]';

  WP_TECSupported:=WP_spectrometer.ModelConfig.hasCooling;
  WP_TECSupported:=true; // remove later, when hascooling really works
  if WP_TECSupported then
  begin
    WP_UseTecCooling:=true;
    WP_spectrometer.setCCDTemperatureEnable(WP_UseTecCooling);
    //* :=WP_spectrometer.Modelconfig.detectorTempMin;
    //*WP_DetectorTemperatureMax:=WP_spectrometer.Modelconfig.detectorTempMax;
    //* WP_Temperature:=WP_DetectorTemperatureMin;
    //*WP_spectrometer.setCCDTemperatureSetpointDegC(WP_DetectorTemperatureMin);
    WP_spectrometer.setCCDTemperatureSetpointDegC(WP_Temperature); //better: set always WP_DetectorTemperatureMin for maximum cooling
  end;
  //*MainWin.aseAcqExpTime.MinValue:=round(WP_spectrometer.ModelConfig.minIntegrationTimeMS); //kommt unfug raus. Mintime:64; Maxtime:1
  //*MainWin.aseAcqExpTime.MaxValue:=round(WP_spectrometer.ModelConfig.maxIntegrationTimeMS);
  Result:=true;
end;

procedure  SetParamsWasatch(const DeviceIndex:Integer);
var
  index  :Integer;
begin
   WP_spectrometer:= WP_driver.getSpectrometer(DeviceIndex);
   WP_spectrometer.boxcarHalfWidth:=WP_boxcarHalfWidth;
   WP_spectrometer.scanAveraging:=WP_scanAveraging;
   //WP_wrapper.setCorrectForDetectorNonlinearity_2(DeviceIndex,WP_CorrDetNonlinearity);
   //WP_wrapper.setCorrectForElectricalDark_2(DeviceIndex,WP_CorrElectricalDark);
   //WP_wrapper.setExternalTriggerMode_2(DeviceIndex,WP_ExternalTriggerMode);
   WP_spectrometer.integrationTimeMS:=WP_integrationtime;
   if WP_TECSupported and WP_UseTecCooling then
     SetTemperatureWasatch(WP_Temperature);
   MainWin.ParamsDone:=true;
end;

function SetScanAveragingWasatch(const avenumber:Integer):Boolean;
begin
  WP_scanAveraging:=avenumber;
  MainWin.ParamsDone:=false;
end;

function SetBoxCarWidthWasatch(const halfwidth:Integer):Boolean;
begin
  WP_boxcarHalfWidth:=halfwidth;
  MainWin.ParamsDone:=false;
end;

function SetTemperatureWasatch(const temperature:Double):Boolean;
begin
  Result:=false;
  if (WP_TECSupported) and WP_UseTecCooling then
  if (temperature>=WP_DetectorTemperatureMin) and (temperature <=WP_DetectorTemperatureMax) then
  begin
    WP_spectrometer.setCCDTemperatureSetpointDegC(temperature);
    WP_Temperature:=temperature;
    Result:=false;
  end
  else
    ShowMessage('Temperature cannot be set: target temp. out of available temperature range'+#13#10+
                '( '+IntToStr(Round(temperature))+'°C is not in '+IntToStr(Round(WP_DetectorTemperatureMin))+' - '+IntToStr(Round(WP_DetectorTemperatureMax))+'  °C )');
end;


procedure SetExposureTimeWasatch(const DeviceIndex, exptime:Integer);
begin
  WP_spectrometer:= WP_driver.getSpectrometer(DeviceIndex);
  WP_integrationtime:=exptime;
  WP_spectrometer.integrationTimeMS:=WP_integrationtime;
  MainWin.ParamsDone:=false;
end;

procedure SetLaserPowerWasatch(const laserpower:Integer);
begin
  if WP_LaserExists then
  begin
    WP_spectrometer.setLaserPowerPercentage(laserpower/100);
    WP_laserpower:=laserpower;
    Sleep(50);
  end;
end;

function GetLaserPowerWasatch:Integer;
begin
  if WP_LaserExists then
  begin
    Result:=WP_laserpower;
  end;
end;

procedure RunLaserWasatch(const value:Boolean);
begin
  if WP_LaserExists then
  begin
    WP_spectrometer.setLaserEnable(value);
  end;
end;

function GetLaserStateWasatch:Boolean;
begin
  Result:=false;
  if WP_LaserExists then
  begin
   Result:=WP_spectrometer.getLaserEnabled;
  end;
end;

procedure GetScanWasatch( const DeviceIndex:Integer);
var
  i, j, status,
  index, position,
  currentposition:Integer;
  exposuretime: Single;
  done,
  failed:Boolean;
  PReal    :^Real;
  PI      :PInteger;
  SmallIntValue: SmallInt;
  doubleValue: Double;
  hresultValue: HResult;
  lowerBound,
  upperBound: Integer;
  WPxvalues,
  WPpixels: PSafeArray;
  WPbadpixels: PSafeArray;
  CalCoefficients:Pcoeff;
begin
  WP_spectrometer:= WP_driver.getSpectrometer(DeviceIndex);
  if not MainWin.ParamsDone then
    SetParamsWasatch(DeviceIndex);
  begin
    if MainWin.ParamsDone then
    begin
      WPpixels := WP_spectrometer.getSpectrum;     // retrieve y values
  {    if WPBadpixelInterp then
      begin
        WPbadpixels:=WP_spectrometer.ModelConfig.badPixels;
        //destroy aktivieren!!
        // bad pixels interpolieren
        SafeArrayGetLBound(WPbadpixels, 1, lowerBound);
        SafeArrayGetUBound(WPbadpixels, 1, upperBound);
        if Length(WP_badpixels)<upperBound-lowerBound+1 then
        begin
          SetLength(WP_badpixels, upperbound-lowerbound+1);
          for i:= lowerBound to upperBound do
          begin
            SafeArrayGetElement(WPbadpixels, i, SmallIntValue);
            WP_badpixels[i]:=SmallIntValue;
          end;
        end;
        for i:=0 to length(WP_badpixels)-1 do
        begin
          wert:=0;
          position:=WP_badpixels[i];
          if i>0 then
          begin
            currentposition:=position-1;
            SafeArrayGetElement(WPpixels,currentposition,doubleValue);
            Wert:=doubleValue;
          end;
          if i<upperbound then
          begin
            currentposition:=position+1;
            SafeArrayGetElement(WPpixels,currentposition,doubleValue);
            Wert:=Wert+doubleValue;
          end;
          if i in [1..upperbound-1] then
            Wert:=Wert/2;
          SafeArrayPutElement(WPpixels,position,Wert);
        end;
      end;    }

      if WP_LaserExists then                       // retrieve x axis data
        WPxvalues:=WP_spectrometer.wavenumbers     // for Raman modules
      else
        WPxvalues:=WP_spectrometer.wavelengths;    // UV-VIS modules

      try
       { CalCoefficients:=InternalCoeffList[DeviceIndex];
        WP_coeff1:=CalCoefficients^[0];
        WP_coeff2:=CalCoefficients^[1];
        WP_coeff3:=CalCoefficients^[2];
        WP_coeff4:=CalCoefficients^[3]; }
        lowerBound := WPpixels.rgsabound[0].lLbound;
        upperBound := WPpixels.rgsabound[0].cElements + lowerBound - 1;

        if MainWin.Chart1.Series[0].XValues.Count<>upperBound-lowerBound then
        begin
          MainWin.Chart1.Series[0].Clear;
          for i:=0 to upperBound-lowerBound do
            MainWin.Chart1.Series[0].AddXY(1,1,'');
        end;

        for i:=0 to upperBound-lowerBound do
        begin
          hresultValue:=SafeArrayGetElement(WPxvalues,i,doubleValue);
          MainWin.Chart1.Series[0].XValues[i]:=doubleValue;
          hresultValue:=SafeArrayGetElement(WPpixels,i,doubleValue);
          MainWin.Chart1.Series[0].YValues[i]:=doubleValue;
        end;

      finally
        SafeArrayDestroy(WPpixels);
        SafeArrayDestroy(WPxvalues);
        //*SafeArrayDestroy(WPbadpixels);
      end;

    end;
  end;
end;

function DisConnectWasatch:Boolean;
var
  i:Integer;
  CalCoefficients:Pcoeff;
begin
  Result:=false;
  RunLaserWasatch(false);
  if InternalCoeffList.Count>0 then
  begin
    for i:= numberOfSpectrometers-1 downto 0 do
    begin
      CalCoefficients:=InternalCoeffList[i];
      Dispose(CalCoefficients);
    end;
    InternalCoeffList.Clear;
  end;
  WP_driver.closeAllSpectrometers;
  WP_wrapper.Destroy;
  WP_wrapper:=nil;
  Result:=true;
end;


end.
