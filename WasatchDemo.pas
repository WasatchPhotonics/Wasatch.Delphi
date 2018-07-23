unit WasatchDemo;

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
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SWasatchHW, VclTee.TeeGDIPlus,
  Vcl.StdCtrls, VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs,
  VCLTee.Chart, Vcl.Buttons, Vcl.Samples.Spin;

type
  TMainWin = class(TForm)
    Chart1: TChart;
    Panel1: TPanel;
    Series1: TFastLineSeries;
    Button1: TButton;
    GroupBox1: TGroupBox;
    sbRunAcquisition: TSpeedButton;
    ComboBox1: TComboBox;
    seIntegrationTime: TSpinEdit;
    seScanAveraging: TSpinEdit;
    seBoxCar: TSpinEdit;
    seTECSetpoint: TSpinEdit;
    seLaserPower: TSpinEdit;
    cbLaserOn: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Memo1: TMemo;

    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure seIntegrationTimeChange(Sender: TObject);
    procedure seTECSetpointChange(Sender: TObject);
    procedure seLaserPowerChange(Sender: TObject);
    procedure cbLaserOnClick(Sender: TObject);
    procedure sbRunAcquisitionClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure seScanAveragingChange(Sender: TObject);
    procedure seBoxCarChange(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    Connected,
    ParamsDone,
    Acquiring: Boolean;
    Deviceindex: Integer;
  end;

var
  MainWin: TMainWin;


implementation

{$R *.dfm}

procedure TMainWin.Button1Click(Sender: TObject);
begin
  RefreshWasatchDeviceList;
  Combobox1.ItemIndex:=0;
  Deviceindex:=ComboBox1.ItemIndex;
  Connected:=ConnectWasatch(Deviceindex);
  UpdateMemo;
end;

procedure TMainWin.cbLaserOnClick(Sender: TObject);
begin
  RunLaserWasatch(cbLaserOn.Checked);
end;

procedure TMainWin.ComboBox1Select(Sender: TObject);
begin
  Deviceindex:=ComboBox1.ItemIndex;
  Connected:=false;
  Connected:=ConnectWasatch(Deviceindex);
  UpdateMemo;
end;

procedure TMainWin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Connected then
    DisConnectWasatch;
end;

procedure TMainWin.seBoxCarChange(Sender: TObject);
begin
  SetBoxCarWidthWasatch(seBoxCar.Value);
end;

procedure TMainWin.seIntegrationTimeChange(Sender: TObject);
begin
  SetExposureTimeWasatch(Deviceindex, seIntegrationTime.Value);
end;

procedure TMainWin.seTECSetpointChange(Sender: TObject);
begin
  SetTemperatureWasatch(seTECSetpoint.Value);
end;

procedure TMainWin.sbRunAcquisitionClick(Sender: TObject);
begin
  if Connected then
  begin
    Acquiring:=not Acquiring;
    if Acquiring then
      sbRunAcquisition.Caption:='Stop'
    else
    sbRunAcquisition.Caption:='Run';
    repeat
      GetScanWasatch(Deviceindex);
      Application.ProcessMessages;
    until not Acquiring;
  end
  else
  begin
    sbRunAcquisition.Caption:='Run';
    Acquiring:=false;
  end;
end;

procedure TMainWin.seLaserPowerChange(Sender: TObject);
begin
  SetLaserPowerWasatch(seLaserPower.Value);
end;

procedure TMainWin.seScanAveragingChange(Sender: TObject);
begin
  SetScanAveragingWasatch(seScanAveraging.Value);
end;

end.
