unit SWasatchHW;

// ************************************************************************ //
//
//  Delphi Demo application for control of Wasatch Photonics spectrometers,
//  using the WasatchNET.tlb type library.
//
//  Sample code created 07/2018 with Embarcadero Delphi XE 5
//  by Dr. Friedrich Menges from Spectroscopy Ninja.
//  http://spectroscopy.ninja
//
//  Feel free to re-use code as needed.
//  Will also run with Delphi Community Edition 10.2.
//
// ************************************************************************ //

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
  WP_minIntegrationTimeMS,
  WP_maxIntegrationTimeMS,
  WP_ExternalTriggerMode: Integer;
  WP_DetectorTemperatureMin,
  WP_DetectorTemperatureMax: Double;
  WP_coeff1,
  WP_coeff2,
  WP_coeff3,
  WP_coeff4 : Double;

  WP_badpixels: Array of SmallInt;

  // FPGA Options
  WP_LaserExists,
  WP_TECSupported,
  WP_UseTECCooling: Boolean;

  // spectrometer state
  WP_scanAveraging,
  WP_boxcarHalfWidth,
  WP_laserpower: Integer;
  WP_integrationtime: Integer = 100;
  WPBadpixelInterp : Boolean;

  // spectrometer readings
  WP_Temperature: Double;

  // objects
  WP_wrapper: IDriverVBAWrapper;
  WP_driver: IDriver;

  WP_Logger: ILogger;
  WP_spectrometer: ISpectrometer;
  WP_Coefficients: Pcoeff;
  InternalCoeffList: TList;

// function prototypes
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

implementation

uses WasatchDemo;

procedure log(const msg: String);
begin
  Mainwin.Memo1.Lines.Add(msg);
end;

procedure RefreshWasatchDeviceList;
var
  i:Integer;
  schtring: String;
begin
  Mainwin.Memo1.Lines.Clear;
  log('Initializing');
  if not Assigned(WP_driver) then    //initialize wrapper & COM interface
  begin
    WP_wrapper := CoDriverVBAWrapper.Create();
    WP_driver  := WP_wrapper.instance;
    //WP_Logger:=WP_driver.Logger;
    //WP_Logger.level:=LogLevel_DEBUG;
    //WP_Logger.setPathname('C:\temp\logfile.txt');
  end;

  WP_driver.closeAllSpectrometers();
  log('calling openAllSpectrometers');
  numberOfSpectrometers := WP_driver.openAllSpectrometers();
  log(format('found %d spectrometers', [numberOfSpectrometers]));
  if numberOfSpectrometers > 0 then     // look for all Wasatch devices
  begin
    for i := 0 to numberOfSpectrometers-1 do
    begin
      WP_spectrometer := WP_driver.getSpectrometer(i);
      schtring := WP_spectrometer.eeprom.model;
      schtring := schtring + '  s/n: ' + WP_spectrometer.eeprom.serialNumber;
      MainWin.ComboBox1.Items.Add(schtring);
      log('  found: ' + schtring);
    end;
  end
  else
    log('no spectrometers found');

  InternalCoeffList := TList.Create;
  for i := 0 to numberOfSpectrometers-1 do
  begin
    New(WP_Coefficients);
    SetLength(WP_Coefficients^, 4);
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
    log('Spectrometer:');
    log('  pixels:               ' + IntToStr  (WP_spectrometer.pixels));
    log('  model:                ' +            WP_spectrometer.model);
    log('  serialNumber:         ' +            WP_spectrometer.serialNumber);
    log('  integrationTimeMS:    ' + IntToStr  (WP_spectrometer.integrationTimeMS));
    log('  scanAverage:          ' + IntToStr  (WP_spectrometer.scanAveraging));
    log('  boxcarHalfWidth:      ' + IntToStr  (WP_spectrometer.boxcarHalfWidth));
    log('  isArm:                ' + BoolToStr (WP_spectrometer.isARM, true));
    log('  hasLaser:             ' + BoolToStr (WP_spectrometer.hasLaser, true));
    log('  getIntegrationTimeMS: ' + IntToStr  (WP_spectrometer.integrationTimeMS));
    log('  getFirmwareRev:       ' +            WP_spectrometer.firmwareRevision);
    log('  getFPGARev:           ' +            WP_spectrometer.fpgaRevision);
    log('  getCCDGain:           ' + FloatToStr(WP_spectrometer.detectorGain));
    log('  getCCDOffset:         ' + IntToStr  (WP_spectrometer.detectorOffset));
    log('  getLineLength:        ' + IntToStr  (WP_spectrometer.pixels));

    log('FeatureIdentification:');
    log('  firmwarePartNum:      ' +            WP_spectrometer.FeatureIdentification.firmwarePartNum);
    log('  firmwareDesc:         ' +            WP_spectrometer.FeatureIdentification.firmwareDesc);
    log('  isSupported:          ' + BoolToStr (WP_spectrometer.FeatureIdentification.isSupported, true));
    log('  defaultPixels:        ' + IntToStr  (WP_spectrometer.FeatureIdentification.defaultPixels));
    log('  spectraBlockSize:     ' + IntToStr  (WP_spectrometer.FeatureIdentification.spectraBlockSize));

    log('FPGAOptions:');
    log('  integrationTimeRes:   ' + IntToStr  (WP_spectrometer.FPGAOptions.integrationTimeResolution));
    log('  dataHeader:           ' + IntToStr  (WP_spectrometer.FPGAOptions.dataHeader));
    log('  hasCFSelect:          ' + BoolToStr (WP_spectrometer.FPGAOptions.hasCFSelect));
    log('  laserType:            ' + IntToStr  (WP_spectrometer.FPGAOptions.laserType));
    log('  laserControl:         ' + IntToStr  (WP_spectrometer.FPGAOptions.laserControl));
    log('  hasAreaScan:          ' + BoolToStr (WP_spectrometer.FPGAOptions.hasAreaScan));
    log('  hasActualIntegTime:   ' + BoolToStr (WP_spectrometer.FPGAOptions.hasActualIntegTime));
    log('  hasHorizBinning:      ' + BoolToStr (WP_spectrometer.FPGAOptions.hasHorizBinning));

    log('EEPROM');
    log(' Page 0:');
    log('  model:                ' +            WP_spectrometer.eeprom.model);
    log('  serialNumber:         ' +            WP_spectrometer.eeprom.serialNumber);
    log('  baudRate:             ' + IntToStr  (WP_spectrometer.eeprom.baudRate));
    log('  hasCooling:           ' + BoolToStr (WP_spectrometer.eeprom.hasCooling, true));
    log('  hasBattery:           ' + BoolToStr (WP_spectrometer.eeprom.hasBattery, true));
    log('  hasLaser:             ' + BoolToStr (WP_spectrometer.eeprom.hasLaser, true));
    log('  excitationNM:         ' + FloatToStr(WP_spectrometer.excitationWavelengthNM));
    log('  slitSizeUM:           ' + IntToStr  (WP_spectrometer.eeprom.slitSizeUM));

    log(' Page 1');

    for i := 0 to 3 do
    begin
      SafeArrayGetElement(WP_spectrometer.eeprom.wavecalCoeffs, i, f);
      log(Format('  wavecalCoeffs[%d]:     %f', [i, f]));
    end;

    for i := 0 to 2 do
    begin
      SafeArrayGetElement(WP_spectrometer.eeprom.degCToDACCoeffs, i, f);
      log(Format('  degCToDACCoeffs[%d]:   %f', [i, f]));
    end;

    log('  detectorTempMin:      ' + IntToStr  (WP_spectrometer.eeprom.detectorTempMin));
    log('  detectorTempMax:      ' + IntToStr  (WP_spectrometer.eeprom.detectorTempMax));

    for i := 0 to 2 do
    begin
      SafeArrayGetElement(WP_spectrometer.eeprom.adcToDegCCoeffs, i, f);
      log(Format('  adcToDegCCoeffs[%d]:   %f', [i, f]));
    end;

    log('  thermistorRes298K:    ' + FloatToStr(WP_spectrometer.eeprom.thermistorResistanceAt298K));
    log('  thermistorBeta:       ' + FloatToStr(WP_spectrometer.eeprom.thermistorBeta));
    log('  calibrationDate:      ' +            WP_spectrometer.eeprom.calibrationDate);
    log('  calibrationBy:        ' +            WP_spectrometer.eeprom.calibrationBy);

    log(' Page 2');
    log('  detectorName:         ' +            WP_spectrometer.eeprom.detectorName);
    log('  activePixelsHoriz:    ' + IntToStr  (WP_spectrometer.eeprom.activePixelsHoriz));
    log('  activePixelsVert:     ' + IntToStr  (WP_spectrometer.eeprom.activePixelsVert));
    log('  minIntegrationTimeMS: ' + IntToStr  (WP_spectrometer.eeprom.minIntegrationTimeMS));
    log('  maxIntegrationTimeMS: ' + IntToStr  (WP_spectrometer.eeprom.maxIntegrationTimeMS));
    log('  actualHoriz:          ' + IntToStr  (WP_spectrometer.eeprom.actualPixelsHoriz));
    log('  roiHorizStart:        ' + IntToStr  (WP_spectrometer.eeprom.ROIHorizStart));
    log('  roiHorizEnd:          ' + IntToStr  (WP_spectrometer.eeprom.ROIHorizEnd));

    log(' Page 3');
    for i := 0 to 3 do
    begin
      SafeArrayGetElement(WP_spectrometer.eeprom.laserPowerCoeffs, i, f);
      log(Format('  laserPowerCoeffs[%d]:   %f', [i, f]));
    end;
    log('  minLaserPower:        ' + FloatToStr(WP_spectrometer.eeprom.minLaserPowerMW));
    log('  maxLaserPower:        ' + FloatToStr(WP_spectrometer.eeprom.maxLaserPowerMW));
    log('  minIntegrationTimeMS  ' + IntToStr  (WP_spectrometer.eeprom.minIntegrationTimeMS));
    log('  maxIntegrationTimeMS: ' + IntToStr  (WP_spectrometer.eeprom.maxIntegrationTimeMS));

    log(' Page 4');
    log('  userText:             ' +            WP_spectrometer.eeprom.userText);

    log(' Page 5');
    for i := 0 to 14 do
    begin
      SafeArrayGetElement(WP_spectrometer.eeprom.badPixels, i, n);
      log(Format('  badPixels[%02d]:        %d', [i, n]));
    end;
    log('  productConfiguration: ' +            WP_spectrometer.eeprom.productConfiguration);

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
  //WP_Logger:=WP_driver.Logger;
  //WP_Logger.level:=LogLevel_DEBUG;
  //WP_Logger.setPathname('C:\Data\Delphi\work\spectrometer_hardware\Wasatch\logfile.txt');
  if not Assigned(WP_driver) then
  begin
    WP_wrapper := CoDriverVBAWrapper.Create();
    WP_driver := WP_wrapper.instance;
    WP_driver.closeAllSpectrometers();
    WP_driver.openAllSpectrometers();
  end;
  WP_spectrometer:= WP_driver.getSpectrometer(DeviceIndex);
  Result:=false;
  WP_coeff1:=0;
  WP_coeff2:=0;
  WP_coeff3:=0;
  WP_coeff4:=0;
  WP_TECSupported:=false;
  WP_UseTecCooling:=false;
  WP_Temperature:=10;
  WP_DetectorTemperatureMin:=10;
  WP_DetectorTemperatureMax:=20;
  WP_ExternalTriggerMode:=0;
  WP_laserpower:=0;
  WPBadpixelInterp:=true;
  WP_minIntegrationTimeMS:=round(WP_spectrometer.eeprom.minIntegrationTimeMS);
  WP_maxIntegrationTimeMS:=round(WP_spectrometer.eeprom.maxIntegrationTimeMS);
  MainWin.seIntegrationTime.MinValue:=WP_minIntegrationTimeMS;
  MainWin.seIntegrationTime.MaxValue:=WP_maxIntegrationTimeMS;
  SetParamsWasatch(DeviceIndex);
  WPCoefficients:=WP_spectrometer.eeprom.wavecalCoeffs;
  i:=0;
  hresultValue:=SafeArrayGetElement(WPCoefficients,i,WP_coeff1);
  i:=1;
  hresultValue:=SafeArrayGetElement(WPCoefficients,i,WP_coeff2);
  i:=2;
  hresultValue:=SafeArrayGetElement(WPCoefficients,i,WP_coeff3);
  i:=3;
  hresultValue:=SafeArrayGetElement(WPCoefficients,i,WP_coeff4);
  if InternalCoeffList.Count=0 then
  begin
    for i:= 0 to numberOfSpectrometers-1 do
    begin
      New(WP_Coefficients);
      SetLength(WP_Coefficients^,4);
      InternalCoeffList.add(WP_Coefficients);
    end;
  end;
  CalCoefficients:=InternalCoeffList[DeviceIndex];
  CalCoefficients^[0]:=WP_coeff1;
  CalCoefficients^[1]:=WP_coeff2;
  CalCoefficients^[2]:=WP_coeff3;
  CalCoefficients^[3]:=WP_coeff4;
  WP_excitationNM:=WP_spectrometer.eeprom.excitationNM;
  WP_LaserExists:=WP_spectrometer.hasLaser;
  if WP_LaserExists then
    MainWin.Chart1.BottomAxis.Title.Caption:='Raman Shift [1/cm]'
  else
    MainWin.Chart1.BottomAxis.Title.Caption:='Wavelength [nm]';
  WP_TECSupported:=WP_spectrometer.eeprom.hasCooling;
  if WP_TECSupported then
  begin
    WP_UseTecCooling:=true;
    WP_spectrometer.detectorTECEnabled := WP_UseTecCooling;
    WP_DetectorTemperatureMin:=WP_spectrometer.eeprom.detectorTempMin;
    WP_DetectorTemperatureMax:=WP_spectrometer.eeprom.detectorTempMax;
    WP_Temperature:=WP_DetectorTemperatureMin;
  end;
  SetTemperatureWasatch(WP_Temperature);
  Result:=true;
end;

procedure  SetParamsWasatch(const DeviceIndex:Integer);
var
  index  :Integer;
begin
   WP_spectrometer:= WP_driver.getSpectrometer(DeviceIndex);
   WP_spectrometer.boxcarHalfWidth:=WP_boxcarHalfWidth;
   WP_spectrometer.scanAveraging:=WP_scanAveraging;
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
    WP_spectrometer.detectorTECSetpointDegC := temperature;
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
    WP_spectrometer.laserEnabled := value;
  end;
end;

function GetLaserStateWasatch:Boolean;
begin
  Result:=false;
  if WP_LaserExists then
  begin
   Result := WP_spectrometer.laserEnabled;
  end;
end;

procedure GetScanWasatch( const DeviceIndex:Integer);
var
  i, j, status,
  index,
  currentposition,
  NumPixels   :Integer;
  exposuretime: Single;
  done,
  failed:Boolean;
  PReal    :^Real;
  PI       :PInteger;
  position,
  SmallIntValue: SmallInt;
  doubleValue,
  Average_Value: Double;
  hresultValue: HResult;
  lowerBound,
  upperBound: Integer;
  WPxvalues,
  WPpixels,
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
      SafeArrayGetUBound(WPpixels, 1, NumPixels);   //spectrum's pixel count

      // Note: temporary work-around until bad pixel interpolation is integrated
      // into Wasatch.NET.
      if WPBadpixelInterp then
      begin
        WPbadpixels:=WP_spectrometer.eeprom.badPixels;  //retrieve bad pixel positions
        // interpolate bad pixels
        try
          SafeArrayGetLBound(WPbadpixels, 1, lowerBound);
          SafeArrayGetUBound(WPbadpixels, 1, upperBound);
          for i:=0 to upperBound-lowerBound do
          begin
            Average_Value:=0;
            SafeArrayGetElement(WPbadpixels, i, position);
            currentposition:=position;
            SafeArrayGetElement(WPpixels,currentposition,doubleValue);
            if position>0 then
            begin
              currentposition:=position-1;
              SafeArrayGetElement(WPpixels,currentposition,doubleValue);
              Average_Value:=doubleValue;
              if position<NumPixels-1 then
              begin
                currentposition:=position+1;
                SafeArrayGetElement(WPpixels,currentposition,doubleValue);
                Average_Value:=Average_Value+doubleValue;
              end;
            end;
            if (position>0) and (position<NumPixels-1) then
              Average_Value:=Average_Value/2;
            currentposition:=position;
            SafeArrayPutElement(WPpixels,currentposition,Average_Value);
          end;
        finally
          SafeArrayDestroy(WPbadpixels);
        end;
      end;
      // set x axis type
      if WP_LaserExists then                       // retrieve x axis data
        WPxvalues:=WP_spectrometer.wavenumbers     // set Raman shift for for Raman modules
      else
        WPxvalues:=WP_spectrometer.wavelengths;    // set wavelength for UV-VIS-NIR  modules
      // update spectrum plot
      try
        lowerBound := WPpixels.rgsabound[0].lLbound;
        upperBound := WPpixels.rgsabound[0].cElements + lowerBound - 1;
        if MainWin.Chart1.Series[0].XValues.Count<>upperBound-lowerBound then // set plot values on first time
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
  WP_driver := nil;
  WP_wrapper := nil;
  Result:=true;
end;

end.
