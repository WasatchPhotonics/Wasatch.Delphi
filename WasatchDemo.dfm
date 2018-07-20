object MainWin: TMainWin
  Left = 0
  Top = 0
  Caption = 'MainWin'
  ClientHeight = 574
  ClientWidth = 933
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 225
    Height = 574
    Align = alLeft
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      225
      574)
    object sbRunAcquisition: TSpeedButton
      Left = 120
      Top = 16
      Width = 90
      Height = 33
      Caption = 'Run'
      OnClick = sbRunAcquisitionClick
    end
    object Button1: TButton
      Left = 16
      Top = 16
      Width = 89
      Height = 33
      Caption = 'Initialize'
      TabOrder = 0
      OnClick = Button1Click
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 55
      Width = 194
      Height = 210
      Caption = 'Spectrometer'
      TabOrder = 1
      object Label1: TLabel
        Left = 87
        Top = 67
        Width = 99
        Height = 13
        Caption = 'integration time (ms)'
      end
      object Label2: TLabel
        Left = 87
        Top = 95
        Width = 73
        Height = 13
        Caption = 'scan averaging'
      end
      object Label3: TLabel
        Left = 87
        Top = 123
        Width = 84
        Height = 13
        Caption = 'boxcar half-width'
      end
      object Label4: TLabel
        Left = 87
        Top = 150
        Width = 95
        Height = 13
        Caption = 'detector temp. ('#176'C)'
      end
      object Label5: TLabel
        Left = 143
        Top = 178
        Width = 11
        Height = 13
        Caption = '%'
      end
      object ComboBox1: TComboBox
        Left = 16
        Top = 24
        Width = 161
        Height = 21
        Style = csDropDownList
        TabOrder = 0
        OnSelect = ComboBox1Select
      end
      object seIntegrationTime: TSpinEdit
        Left = 16
        Top = 64
        Width = 65
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 1
        Value = 100
        OnChange = seIntegrationTimeChange
      end
      object seScanAveraging: TSpinEdit
        Left = 16
        Top = 92
        Width = 65
        Height = 22
        MaxValue = 100
        MinValue = 1
        TabOrder = 2
        Value = 1
        OnChange = seScanAveragingChange
      end
      object seBoxCar: TSpinEdit
        Left = 16
        Top = 120
        Width = 65
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 3
        Value = 0
        OnChange = seBoxCarChange
      end
      object seTECSetpoint: TSpinEdit
        Left = 16
        Top = 148
        Width = 65
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 4
        Value = 10
        OnChange = seTECSetpointChange
      end
      object seLaserPower: TSpinEdit
        Left = 87
        Top = 175
        Width = 50
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 5
        Value = 100
        OnChange = seLaserPowerChange
      end
      object cbLaserOn: TCheckBox
        Left = 16
        Top = 176
        Width = 65
        Height = 17
        Caption = 'laser on'
        TabOrder = 6
        OnClick = cbLaserOnClick
      end
    end
    object Memo1: TMemo
      Left = 16
      Top = 271
      Width = 203
      Height = 290
      Anchors = [akLeft, akTop, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Consolas'
      Font.Style = []
      Lines.Strings = (
        'Memo1')
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 2
    end
  end
  object Chart1: TChart
    Left = 225
    Top = 0
    Width = 708
    Height = 574
    BackWall.Brush.Gradient.Direction = gdBottomTop
    BackWall.Brush.Gradient.EndColor = clWhite
    BackWall.Brush.Gradient.StartColor = 15395562
    BackWall.Brush.Gradient.Visible = True
    BackWall.Transparent = False
    Foot.Font.Color = clBlue
    Foot.Font.Name = 'Verdana'
    Gradient.Direction = gdBottomTop
    Gradient.EndColor = clWhite
    Gradient.MidColor = 15395562
    Gradient.StartColor = 15395562
    Gradient.Visible = True
    LeftWall.Color = 14745599
    Legend.Font.Name = 'Verdana'
    Legend.Shadow.Transparency = 0
    Legend.Visible = False
    RightWall.Color = 14745599
    Title.Font.Name = 'Verdana'
    Title.Text.Strings = (
      'TChart')
    BottomAxis.Axis.Color = 4210752
    BottomAxis.Grid.Color = 11119017
    BottomAxis.LabelsFormat.Font.Name = 'Verdana'
    BottomAxis.TicksInner.Color = 11119017
    BottomAxis.Title.Caption = 'Wavelength [nm]'
    BottomAxis.Title.Font.Name = 'Verdana'
    DepthAxis.Axis.Color = 4210752
    DepthAxis.Grid.Color = 11119017
    DepthAxis.LabelsFormat.Font.Name = 'Verdana'
    DepthAxis.TicksInner.Color = 11119017
    DepthAxis.Title.Font.Name = 'Verdana'
    DepthTopAxis.Axis.Color = 4210752
    DepthTopAxis.Grid.Color = 11119017
    DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
    DepthTopAxis.TicksInner.Color = 11119017
    DepthTopAxis.Title.Font.Name = 'Verdana'
    LeftAxis.Axis.Color = 4210752
    LeftAxis.Grid.Color = 11119017
    LeftAxis.LabelsFormat.Font.Name = 'Verdana'
    LeftAxis.TicksInner.Color = 11119017
    LeftAxis.Title.Caption = 'Intensity'
    LeftAxis.Title.Font.Name = 'Verdana'
    RightAxis.Axis.Color = 4210752
    RightAxis.Grid.Color = 11119017
    RightAxis.LabelsFormat.Font.Name = 'Verdana'
    RightAxis.TicksInner.Color = 11119017
    RightAxis.Title.Font.Name = 'Verdana'
    TopAxis.Axis.Color = 4210752
    TopAxis.Grid.Color = 11119017
    TopAxis.LabelsFormat.Font.Name = 'Verdana'
    TopAxis.TicksInner.Color = 11119017
    TopAxis.Title.Font.Name = 'Verdana'
    View3D = False
    Align = alClient
    Color = clWhite
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TFastLineSeries
      Selected.Hover.Visible = True
      LinePen.Color = 10708548
      TreatNulls = tnDontPaint
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
end
