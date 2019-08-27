unit WasatchNET_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 8/27/19 2:31:55 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\WINDOWS\WasatchNET.tlb (1)
// LIBID: {6C29D82F-9444-4CA0-A061-213F1A56DE8D}
// LCID: 0
// Helpfile: 
// HelpString: .NET application wrapper for Wasatch Photonics spectrometers
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
//   (3) v2.4 System_Windows_Forms, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.Windows.Forms.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, mscorlib_TLB, System.Classes, System.Variants, System.Win.StdVCL, System_Windows_Forms_TLB, Vcl.Graphics, Vcl.OleServer, 
Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  WasatchNETMajorVersion = 2;
  WasatchNETMinorVersion = 0;

  LIBID_WasatchNET: TGUID = '{6C29D82F-9444-4CA0-A061-213F1A56DE8D}';

  IID__AcquisitionStatus: TGUID = '{72489ACB-B7A4-343B-99F4-33A1FDA394ED}';
  IID_IFeatureIdentification: TGUID = '{4CCF3543-73EF-49D5-8234-FC2FDF647127}';
  CLASS_FeatureIdentification: TGUID = '{64D0A563-D2E6-4267-A496-A82C0F2D75DB}';
  IID_IFPGAOptions: TGUID = '{CCF6BA13-ECC7-456C-AAFC-ACB8D5E58BDE}';
  IID_IDriver: TGUID = '{860AEAC3-6016-47B0-ABB9-88F0194601EB}';
  IID_IDriverVBAWrapper: TGUID = '{B32497AD-4D20-4027-9E90-5A34E7367B3B}';
  CLASS_FPGAOptions: TGUID = '{9ADF1212-249E-4C73-8FE1-E5A22C7EE3AA}';
  IID_ILogger: TGUID = '{7AF402E8-3051-43CE-AF24-29F44513A266}';
  IID_IEEPROM: TGUID = '{D6BC706B-4B50-4CFD-AFFC-6A01F56B92B4}';
  IID_ISpectrometer: TGUID = '{7F04C891-E0AC-4F47-812E-C757CF2918B7}';
  IID_IUInt40: TGUID = '{5BC91277-C373-44F3-8C84-77964365F627}';
  CLASS_EEPROM: TGUID = '{A224D5A7-A0E0-4AAC-8489-4BB0CED3171B}';
  IID__ParseData: TGUID = '{F6B5DFEF-2A1D-30CF-8F11-08623387E532}';
  IID__FunkyFloat: TGUID = '{93BB3FDC-4DE0-3361-9B4D-82D313AF51D0}';
  IID__OpcodeHelper: TGUID = '{0464E676-8C2D-3E77-8A14-616733C73B49}';
  CLASS_Driver: TGUID = '{E71326C8-C2BC-404F-81E4-394D95541A24}';
  CLASS_Logger: TGUID = '{5FED8E72-15B1-4ACA-B730-3B3006364D23}';
  CLASS_Spectrometer: TGUID = '{06DF0AB6-741E-43D8-92EF-E14CB74070D7}';
  IID__Util: TGUID = '{C4B1136D-9551-304A-B9BF-EE7FDECC0528}';
  CLASS_DriverVBAWrapper: TGUID = '{E253CACE-A702-4A11-B285-D9B9E18886E4}';
  CLASS_AcquisitionStatus: TGUID = '{4941B41F-A388-3123-9C52-44BF0FAD2859}';
  CLASS_ParseData: TGUID = '{E40B84F3-4ACC-31B7-AE12-659D99077CD7}';
  CLASS_FunkyFloat: TGUID = '{8E8F65E5-648F-3414-987E-49942B82FD4D}';
  CLASS_OpcodeHelper: TGUID = '{D3A98724-1F07-325A-BCFB-0AC1D81DCABE}';
  CLASS_Util: TGUID = '{3F8CAD1C-857F-3FE3-9781-5921D25AD088}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum BOARD_TYPES
type
  BOARD_TYPES = TOleEnum;
const
  BOARD_TYPES_RAMAN_FX2 = $00000000;
  BOARD_TYPES_INGAAS_FX2 = $00000001;
  BOARD_TYPES_DRAGSTER_FX3 = $00000002;
  BOARD_TYPES_ARM = $00000003;
  BOARD_TYPES_ERROR = $00000004;

// Constants for enum FPGA_INTEG_TIME_RES
type
  FPGA_INTEG_TIME_RES = TOleEnum;
const
  FPGA_INTEG_TIME_RES_ONE_MS = $00000000;
  FPGA_INTEG_TIME_RES_TEN_MS = $00000001;
  FPGA_INTEG_TIME_RES_SWITCHABLE = $00000002;
  FPGA_INTEG_TIME_RES_ERROR = $00000003;

// Constants for enum FPGA_DATA_HEADER
type
  FPGA_DATA_HEADER = TOleEnum;
const
  FPGA_DATA_HEADER_NONE = $00000000;
  FPGA_DATA_HEADER_OCEAN_OPTICS = $00000001;
  FPGA_DATA_HEADER_WASATCH = $00000002;
  FPGA_DATA_HEADER_ERROR = $00000003;

// Constants for enum FPGA_LASER_TYPE
type
  FPGA_LASER_TYPE = TOleEnum;
const
  FPGA_LASER_TYPE_NONE = $00000000;
  FPGA_LASER_TYPE_INTERNAL = $00000001;
  FPGA_LASER_TYPE_EXTERNAL = $00000002;
  FPGA_LASER_TYPE_ERROR = $00000003;

// Constants for enum FPGA_LASER_CONTROL
type
  FPGA_LASER_CONTROL = TOleEnum;
const
  FPGA_LASER_CONTROL_MODULATION = $00000000;
  FPGA_LASER_CONTROL_TRANSITION_POINTS = $00000001;
  FPGA_LASER_CONTROL_RAMPING = $00000002;
  FPGA_LASER_CONTROL_ERROR = $00000003;

// Constants for enum LogLevel
type
  LogLevel = TOleEnum;
const
  LogLevel_DEBUG = $00000000;
  LogLevel_INFO = $00000001;
  LogLevel_ERROR = $00000002;
  LogLevel_NEVER = $00000003;

// Constants for enum TRIGGER_SOURCE
type
  TRIGGER_SOURCE = TOleEnum;
const
  TRIGGER_SOURCE_INTERNAL = $00000000;
  TRIGGER_SOURCE_EXTERNAL = $00000001;
  TRIGGER_SOURCE_ERROR = $00000002;

// Constants for enum EXTERNAL_TRIGGER_OUTPUT
type
  EXTERNAL_TRIGGER_OUTPUT = TOleEnum;
const
  EXTERNAL_TRIGGER_OUTPUT_LASER_MODULATION = $00000000;
  EXTERNAL_TRIGGER_OUTPUT_INTEGRATION_ACTIVE_PULSE = $00000001;
  EXTERNAL_TRIGGER_OUTPUT_ERROR = $00000002;

// Constants for enum HORIZONTAL_BINNING
type
  HORIZONTAL_BINNING = TOleEnum;
const
  HORIZONTAL_BINNING_NONE = $00000000;
  HORIZONTAL_BINNING_TWO_PIXEL = $00000001;
  HORIZONTAL_BINNING_FOUR_PIXEL = $00000002;
  HORIZONTAL_BINNING_ERROR = $00000003;

// Constants for enum Opcodes
type
  Opcodes = TOleEnum;
const
  Opcodes_ACQUIRE_SPECTRUM = $00000000;
  Opcodes_GET_ACTUAL_FRAMES = $00000001;
  Opcodes_GET_ACTUAL_INTEGRATION_TIME = $00000002;
  Opcodes_GET_ADC_RAW = $00000003;
  Opcodes_GET_AREA_SCAN_ENABLE = $00000004;
  Opcodes_GET_BATTERY_STATE = $00000005;
  Opcodes_GET_CF_SELECT = $00000006;
  Opcodes_GET_COMPILATION_OPTIONS = $00000007;
  Opcodes_GET_CONTINUOUS_ACQUISITION = $00000008;
  Opcodes_GET_CONTINUOUS_FRAMES = $00000009;
  Opcodes_GET_DETECTOR_GAIN = $0000000A;
  Opcodes_GET_DETECTOR_GAIN_ODD = $0000000B;
  Opcodes_GET_DETECTOR_OFFSET = $0000000C;
  Opcodes_GET_DETECTOR_OFFSET_ODD = $0000000D;
  Opcodes_GET_DETECTOR_SENSING_THRESHOLD = $0000000E;
  Opcodes_GET_DETECTOR_SENSING_THRESHOLD_ENABLE = $0000000F;
  Opcodes_GET_DETECTOR_TEC_ENABLE = $00000010;
  Opcodes_GET_DETECTOR_TEC_SETPOINT = $00000011;
  Opcodes_GET_DETECTOR_TEMPERATURE = $00000012;
  Opcodes_GET_FIRMWARE_REVISION = $00000013;
  Opcodes_GET_FPGA_REVISION = $00000014;
  Opcodes_GET_HORIZONTAL_BINNING = $00000015;
  Opcodes_GET_INTEGRATION_TIME = $00000016;
  Opcodes_GET_LASER_ENABLE = $00000017;
  Opcodes_GET_LASER_INTERLOCK = $00000018;
  Opcodes_GET_LASER_MOD_DURATION = $00000019;
  Opcodes_GET_LASER_MOD_ENABLE = $0000001A;
  Opcodes_GET_LASER_MOD_PERIOD = $0000001B;
  Opcodes_GET_LASER_MOD_PULSE_DELAY = $0000001C;
  Opcodes_GET_LASER_MOD_PULSE_WIDTH = $0000001D;
  Opcodes_GET_LASER_RAMPING_MODE = $0000001E;
  Opcodes_GET_LASER_TEC_SETPOINT = $0000001F;
  Opcodes_GET_LINE_LENGTH = $00000020;
  Opcodes_GET_LINK_LASER_MOD_TO_INTEGRATION_TIME = $00000021;
  Opcodes_GET_MODEL_CONFIG = $00000022;
  Opcodes_GET_OPT_ACTUAL_INTEGRATION_TIME = $00000023;
  Opcodes_GET_OPT_AREA_SCAN = $00000024;
  Opcodes_GET_OPT_CF_SELECT = $00000025;
  Opcodes_GET_OPT_DATA_HEADER_TAG = $00000026;
  Opcodes_GET_OPT_HORIZONTAL_BINNING = $00000027;
  Opcodes_GET_OPT_INTEGRATION_TIME_RESOLUTION = $00000028;
  Opcodes_GET_OPT_LASER_CONTROL = $00000029;
  Opcodes_GET_OPT_LASER_TYPE = $0000002A;
  Opcodes_GET_SELECTED_ADC = $0000002B;
  Opcodes_GET_TRIGGER_DELAY = $0000002C;
  Opcodes_GET_TRIGGER_OUTPUT = $0000002D;
  Opcodes_GET_TRIGGER_SOURCE = $0000002E;
  Opcodes_POLL_DATA = $0000002F;
  Opcodes_SECOND_TIER_COMMAND = $00000030;
  Opcodes_SET_AREA_SCAN_ENABLE = $00000031;
  Opcodes_SET_CF_SELECT = $00000032;
  Opcodes_SET_CONTINUOUS_ACQUISITION = $00000033;
  Opcodes_SET_CONTINUOUS_FRAMES = $00000034;
  Opcodes_SET_DETECTOR_GAIN = $00000035;
  Opcodes_SET_DETECTOR_GAIN_ODD = $00000036;
  Opcodes_SET_DETECTOR_OFFSET = $00000037;
  Opcodes_SET_DETECTOR_OFFSET_ODD = $00000038;
  Opcodes_SET_DETECTOR_SENSING_THRESHOLD = $00000039;
  Opcodes_SET_DETECTOR_SENSING_THRESHOLD_ENABLE = $0000003A;
  Opcodes_SET_DETECTOR_TEC_ENABLE = $0000003B;
  Opcodes_SET_DETECTOR_TEC_SETPOINT = $0000003C;
  Opcodes_SET_DFU_MODE = $0000003D;
  Opcodes_SET_HORIZONTAL_BINNING = $0000003E;
  Opcodes_SET_INTEGRATION_TIME = $0000003F;
  Opcodes_SET_LASER_ENABLE = $00000040;
  Opcodes_SET_LASER_MOD_DURATION = $00000041;
  Opcodes_SET_LASER_MOD_ENABLE = $00000042;
  Opcodes_SET_LASER_MOD_PERIOD = $00000043;
  Opcodes_SET_LASER_MOD_PULSE_DELAY = $00000044;
  Opcodes_SET_LASER_MOD_PULSE_WIDTH = $00000045;
  Opcodes_SET_LASER_RAMPING_MODE = $00000046;
  Opcodes_SET_LASER_TEC_SETPOINT = $00000047;
  Opcodes_SET_LINK_LASER_MOD_TO_INTEGRATION_TIME = $00000048;
  Opcodes_SET_MODEL_CONFIG_ARM = $00000049;
  Opcodes_SET_MODEL_CONFIG_FX2 = $0000004A;
  Opcodes_SET_SELECTED_ADC = $0000004B;
  Opcodes_SET_TRIGGER_DELAY = $0000004C;
  Opcodes_SET_TRIGGER_OUTPUT = $0000004D;
  Opcodes_SET_TRIGGER_SOURCE = $0000004E;

// Constants for enum LaserPowerResolution
type
  LaserPowerResolution = TOleEnum;
const
  LaserPowerResolution_LASER_POWER_RESOLUTION_100 = $00000000;
  LaserPowerResolution_LASER_POWER_RESOLUTION_1000 = $00000001;
  LaserPowerResolution_LASER_POWER_RESOLUTION_MANUAL = $00000002;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _AcquisitionStatus = interface;
  _AcquisitionStatusDisp = dispinterface;
  IFeatureIdentification = interface;
  IFeatureIdentificationDisp = dispinterface;
  IFPGAOptions = interface;
  IFPGAOptionsDisp = dispinterface;
  IDriver = interface;
  IDriverDisp = dispinterface;
  IDriverVBAWrapper = interface;
  IDriverVBAWrapperDisp = dispinterface;
  ILogger = interface;
  ILoggerDisp = dispinterface;
  IEEPROM = interface;
  IEEPROMDisp = dispinterface;
  ISpectrometer = interface;
  ISpectrometerDisp = dispinterface;
  IUInt40 = interface;
  IUInt40Disp = dispinterface;
  _ParseData = interface;
  _ParseDataDisp = dispinterface;
  _FunkyFloat = interface;
  _FunkyFloatDisp = dispinterface;
  _OpcodeHelper = interface;
  _OpcodeHelperDisp = dispinterface;
  _Util = interface;
  _UtilDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  FeatureIdentification = IFeatureIdentification;
  FPGAOptions = IFPGAOptions;
  EEPROM = IEEPROM;
  Driver = IDriver;
  Logger = ILogger;
  Spectrometer = ISpectrometer;
  DriverVBAWrapper = IDriverVBAWrapper;
  AcquisitionStatus = _AcquisitionStatus;
  ParseData = _ParseData;
  FunkyFloat = _FunkyFloat;
  OpcodeHelper = _OpcodeHelper;
  Util = _Util;


// *********************************************************************//
// Interface: _AcquisitionStatus
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {72489ACB-B7A4-343B-99F4-33A1FDA394ED}
// *********************************************************************//
  _AcquisitionStatus = interface(IDispatch)
    ['{72489ACB-B7A4-343B-99F4-33A1FDA394ED}']
  end;

// *********************************************************************//
// DispIntf:  _AcquisitionStatusDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {72489ACB-B7A4-343B-99F4-33A1FDA394ED}
// *********************************************************************//
  _AcquisitionStatusDisp = dispinterface
    ['{72489ACB-B7A4-343B-99F4-33A1FDA394ED}']
  end;

// *********************************************************************//
// Interface: IFeatureIdentification
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4CCF3543-73EF-49D5-8234-FC2FDF647127}
// *********************************************************************//
  IFeatureIdentification = interface(IDispatch)
    ['{4CCF3543-73EF-49D5-8234-FC2FDF647127}']
    function Get_boardType: BOARD_TYPES; safecall;
    function Get_firmwarePartNum: WideString; safecall;
    function Get_firmwareDesc: WideString; safecall;
    function Get_isSupported: WordBool; safecall;
    function Get_defaultPixels: LongWord; safecall;
    function Get_spectraBlockSize: LongWord; safecall;
    function Get_usbDelayMS: LongWord; safecall;
    function Get_hasDefaultTECSetpointDegC: WordBool; safecall;
    function Get_defaultTECSetpointDegC: Integer; safecall;
    property boardType: BOARD_TYPES read Get_boardType;
    property firmwarePartNum: WideString read Get_firmwarePartNum;
    property firmwareDesc: WideString read Get_firmwareDesc;
    property isSupported: WordBool read Get_isSupported;
    property defaultPixels: LongWord read Get_defaultPixels;
    property spectraBlockSize: LongWord read Get_spectraBlockSize;
    property usbDelayMS: LongWord read Get_usbDelayMS;
    property hasDefaultTECSetpointDegC: WordBool read Get_hasDefaultTECSetpointDegC;
    property defaultTECSetpointDegC: Integer read Get_defaultTECSetpointDegC;
  end;

// *********************************************************************//
// DispIntf:  IFeatureIdentificationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4CCF3543-73EF-49D5-8234-FC2FDF647127}
// *********************************************************************//
  IFeatureIdentificationDisp = dispinterface
    ['{4CCF3543-73EF-49D5-8234-FC2FDF647127}']
    property boardType: BOARD_TYPES readonly dispid 1610743808;
    property firmwarePartNum: WideString readonly dispid 1610743809;
    property firmwareDesc: WideString readonly dispid 1610743810;
    property isSupported: WordBool readonly dispid 1610743811;
    property defaultPixels: LongWord readonly dispid 1610743812;
    property spectraBlockSize: LongWord readonly dispid 1610743813;
    property usbDelayMS: LongWord readonly dispid 1610743814;
    property hasDefaultTECSetpointDegC: WordBool readonly dispid 1610743815;
    property defaultTECSetpointDegC: Integer readonly dispid 1610743816;
  end;

// *********************************************************************//
// Interface: IFPGAOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CCF6BA13-ECC7-456C-AAFC-ACB8D5E58BDE}
// *********************************************************************//
  IFPGAOptions = interface(IDispatch)
    ['{CCF6BA13-ECC7-456C-AAFC-ACB8D5E58BDE}']
    function Get_integrationTimeResolution: FPGA_INTEG_TIME_RES; safecall;
    function Get_dataHeader: FPGA_DATA_HEADER; safecall;
    function Get_hasCFSelect: WordBool; safecall;
    function Get_laserType: FPGA_LASER_TYPE; safecall;
    function Get_laserControl: FPGA_LASER_CONTROL; safecall;
    function Get_hasAreaScan: WordBool; safecall;
    function Get_hasActualIntegTime: WordBool; safecall;
    function Get_hasHorizBinning: WordBool; safecall;
    function parseResolution(value: Integer): FPGA_INTEG_TIME_RES; safecall;
    function parseDataHeader(value: Integer): FPGA_DATA_HEADER; safecall;
    function parseLaserType(value: Integer): FPGA_LASER_TYPE; safecall;
    function parseLaserControl(value: Integer): FPGA_LASER_CONTROL; safecall;
    property integrationTimeResolution: FPGA_INTEG_TIME_RES read Get_integrationTimeResolution;
    property dataHeader: FPGA_DATA_HEADER read Get_dataHeader;
    property hasCFSelect: WordBool read Get_hasCFSelect;
    property laserType: FPGA_LASER_TYPE read Get_laserType;
    property laserControl: FPGA_LASER_CONTROL read Get_laserControl;
    property hasAreaScan: WordBool read Get_hasAreaScan;
    property hasActualIntegTime: WordBool read Get_hasActualIntegTime;
    property hasHorizBinning: WordBool read Get_hasHorizBinning;
  end;

// *********************************************************************//
// DispIntf:  IFPGAOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CCF6BA13-ECC7-456C-AAFC-ACB8D5E58BDE}
// *********************************************************************//
  IFPGAOptionsDisp = dispinterface
    ['{CCF6BA13-ECC7-456C-AAFC-ACB8D5E58BDE}']
    property integrationTimeResolution: FPGA_INTEG_TIME_RES readonly dispid 1610743808;
    property dataHeader: FPGA_DATA_HEADER readonly dispid 1610743809;
    property hasCFSelect: WordBool readonly dispid 1610743810;
    property laserType: FPGA_LASER_TYPE readonly dispid 1610743811;
    property laserControl: FPGA_LASER_CONTROL readonly dispid 1610743812;
    property hasAreaScan: WordBool readonly dispid 1610743813;
    property hasActualIntegTime: WordBool readonly dispid 1610743814;
    property hasHorizBinning: WordBool readonly dispid 1610743815;
    function parseResolution(value: Integer): FPGA_INTEG_TIME_RES; dispid 1610743816;
    function parseDataHeader(value: Integer): FPGA_DATA_HEADER; dispid 1610743817;
    function parseLaserType(value: Integer): FPGA_LASER_TYPE; dispid 1610743818;
    function parseLaserControl(value: Integer): FPGA_LASER_CONTROL; dispid 1610743819;
  end;

// *********************************************************************//
// Interface: IDriver
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {860AEAC3-6016-47B0-ABB9-88F0194601EB}
// *********************************************************************//
  IDriver = interface(IDispatch)
    ['{860AEAC3-6016-47B0-ABB9-88F0194601EB}']
    function Get_Logger: ILogger; safecall;
    function Get_version: WideString; safecall;
    function openAllSpectrometers: Integer; safecall;
    function getNumberOfSpectrometers: Integer; safecall;
    function getSpectrometer(index: Integer): ISpectrometer; safecall;
    procedure closeAllSpectrometers; safecall;
    property Logger: ILogger read Get_Logger;
    property version: WideString read Get_version;
  end;

// *********************************************************************//
// DispIntf:  IDriverDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {860AEAC3-6016-47B0-ABB9-88F0194601EB}
// *********************************************************************//
  IDriverDisp = dispinterface
    ['{860AEAC3-6016-47B0-ABB9-88F0194601EB}']
    property Logger: ILogger readonly dispid 1610743808;
    property version: WideString readonly dispid 1610743809;
    function openAllSpectrometers: Integer; dispid 1610743810;
    function getNumberOfSpectrometers: Integer; dispid 1610743811;
    function getSpectrometer(index: Integer): ISpectrometer; dispid 1610743812;
    procedure closeAllSpectrometers; dispid 1610743813;
  end;

// *********************************************************************//
// Interface: IDriverVBAWrapper
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B32497AD-4D20-4027-9E90-5A34E7367B3B}
// *********************************************************************//
  IDriverVBAWrapper = interface(IDispatch)
    ['{B32497AD-4D20-4027-9E90-5A34E7367B3B}']
    function Get_instance: IDriver; safecall;
    function getSingleton: IDriver; safecall;
    property instance: IDriver read Get_instance;
  end;

// *********************************************************************//
// DispIntf:  IDriverVBAWrapperDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B32497AD-4D20-4027-9E90-5A34E7367B3B}
// *********************************************************************//
  IDriverVBAWrapperDisp = dispinterface
    ['{B32497AD-4D20-4027-9E90-5A34E7367B3B}']
    property instance: IDriver readonly dispid 1610743808;
    function getSingleton: IDriver; dispid 1610743809;
  end;

// *********************************************************************//
// Interface: ILogger
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7AF402E8-3051-43CE-AF24-29F44513A266}
// *********************************************************************//
  ILogger = interface(IDispatch)
    ['{7AF402E8-3051-43CE-AF24-29F44513A266}']
    function Get_level: LogLevel; safecall;
    procedure Set_level(pRetVal: LogLevel); safecall;
    procedure setTextBox(const tb: _TextBox); safecall;
    procedure setPathname(const path: WideString); safecall;
    function debugEnabled: WordBool; safecall;
    function getLastError: WideString; safecall;
    function hasError: WordBool; safecall;
    function error(const fmt: WideString; obj: PSafeArray): WordBool; safecall;
    procedure info(const fmt: WideString; obj: PSafeArray); safecall;
    procedure debug(const fmt: WideString; obj: PSafeArray); safecall;
    procedure save(const pathname: WideString); safecall;
    procedure hexdump(buf: PSafeArray; const prefix: WideString); safecall;
    property level: LogLevel read Get_level write Set_level;
  end;

// *********************************************************************//
// DispIntf:  ILoggerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7AF402E8-3051-43CE-AF24-29F44513A266}
// *********************************************************************//
  ILoggerDisp = dispinterface
    ['{7AF402E8-3051-43CE-AF24-29F44513A266}']
    property level: LogLevel dispid 1610743808;
    procedure setTextBox(const tb: _TextBox); dispid 1610743810;
    procedure setPathname(const path: WideString); dispid 1610743811;
    function debugEnabled: WordBool; dispid 1610743812;
    function getLastError: WideString; dispid 1610743813;
    function hasError: WordBool; dispid 1610743814;
    function error(const fmt: WideString; obj: {NOT_OLEAUTO(PSafeArray)}OleVariant): WordBool; dispid 1610743815;
    procedure info(const fmt: WideString; obj: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743816;
    procedure debug(const fmt: WideString; obj: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743817;
    procedure save(const pathname: WideString); dispid 1610743818;
    procedure hexdump(buf: {NOT_OLEAUTO(PSafeArray)}OleVariant; const prefix: WideString); dispid 1610743819;
  end;

// *********************************************************************//
// Interface: IEEPROM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D6BC706B-4B50-4CFD-AFFC-6A01F56B92B4}
// *********************************************************************//
  IEEPROM = interface(IDispatch)
    ['{D6BC706B-4B50-4CFD-AFFC-6A01F56B92B4}']
    function Get_format: Byte; safecall;
    procedure Set_format(pRetVal: Byte); safecall;
    function Get_model: WideString; safecall;
    procedure Set_model(const pRetVal: WideString); safecall;
    function Get_serialNumber: WideString; safecall;
    procedure Set_serialNumber(const pRetVal: WideString); safecall;
    function Get_baudRate: LongWord; safecall;
    procedure Set_baudRate(pRetVal: LongWord); safecall;
    function Get_hasCooling: WordBool; safecall;
    procedure Set_hasCooling(pRetVal: WordBool); safecall;
    function Get_hasBattery: WordBool; safecall;
    procedure Set_hasBattery(pRetVal: WordBool); safecall;
    function Get_hasLaser: WordBool; safecall;
    procedure Set_hasLaser(pRetVal: WordBool); safecall;
    function Get_excitationNM: Word; safecall;
    procedure Set_excitationNM(pRetVal: Word); safecall;
    function Get_slitSizeUM: Word; safecall;
    procedure Set_slitSizeUM(pRetVal: Word); safecall;
    function Get_startupIntegrationTimeMS: Word; safecall;
    procedure Set_startupIntegrationTimeMS(pRetVal: Word); safecall;
    function Get_startupDetectorTemperatureDegC: Smallint; safecall;
    procedure Set_startupDetectorTemperatureDegC(pRetVal: Smallint); safecall;
    function Get_startupTriggeringMode: Byte; safecall;
    procedure Set_startupTriggeringMode(pRetVal: Byte); safecall;
    function Get_detectorGain: Single; safecall;
    procedure Set_detectorGain(pRetVal: Single); safecall;
    function Get_detectorOffset: Smallint; safecall;
    procedure Set_detectorOffset(pRetVal: Smallint); safecall;
    function Get_detectorGainOdd: Single; safecall;
    procedure Set_detectorGainOdd(pRetVal: Single); safecall;
    function Get_detectorOffsetOdd: Smallint; safecall;
    procedure Set_detectorOffsetOdd(pRetVal: Smallint); safecall;
    function Get_wavecalCoeffs: PSafeArray; safecall;
    procedure Set_wavecalCoeffs(pRetVal: PSafeArray); safecall;
    function Get_degCToDACCoeffs: PSafeArray; safecall;
    procedure Set_degCToDACCoeffs(pRetVal: PSafeArray); safecall;
    function Get_detectorTempMin: Smallint; safecall;
    procedure Set_detectorTempMin(pRetVal: Smallint); safecall;
    function Get_detectorTempMax: Smallint; safecall;
    procedure Set_detectorTempMax(pRetVal: Smallint); safecall;
    function Get_adcToDegCCoeffs: PSafeArray; safecall;
    procedure Set_adcToDegCCoeffs(pRetVal: PSafeArray); safecall;
    function Get_thermistorResistanceAt298K: Smallint; safecall;
    procedure Set_thermistorResistanceAt298K(pRetVal: Smallint); safecall;
    function Get_thermistorBeta: Smallint; safecall;
    procedure Set_thermistorBeta(pRetVal: Smallint); safecall;
    function Get_calibrationDate: WideString; safecall;
    procedure Set_calibrationDate(const pRetVal: WideString); safecall;
    function Get_calibrationBy: WideString; safecall;
    procedure Set_calibrationBy(const pRetVal: WideString); safecall;
    function Get_detectorName: WideString; safecall;
    procedure Set_detectorName(const pRetVal: WideString); safecall;
    function Get_activePixelsHoriz: Word; safecall;
    procedure Set_activePixelsHoriz(pRetVal: Word); safecall;
    function Get_activePixelsVert: Word; safecall;
    procedure Set_activePixelsVert(pRetVal: Word); safecall;
    function Get_minIntegrationTimeMS: LongWord; safecall;
    procedure Set_minIntegrationTimeMS(pRetVal: LongWord); safecall;
    function Get_maxIntegrationTimeMS: LongWord; safecall;
    procedure Set_maxIntegrationTimeMS(pRetVal: LongWord); safecall;
    function Get_actualPixelsHoriz: Word; safecall;
    procedure Set_actualPixelsHoriz(pRetVal: Word); safecall;
    function Get_ROIHorizStart: Word; safecall;
    procedure Set_ROIHorizStart(pRetVal: Word); safecall;
    function Get_ROIHorizEnd: Word; safecall;
    procedure Set_ROIHorizEnd(pRetVal: Word); safecall;
    function Get_ROIVertRegionStart: PSafeArray; safecall;
    procedure Set_ROIVertRegionStart(pRetVal: PSafeArray); safecall;
    function Get_ROIVertRegionEnd: PSafeArray; safecall;
    procedure Set_ROIVertRegionEnd(pRetVal: PSafeArray); safecall;
    function Get_linearityCoeffs: PSafeArray; safecall;
    procedure Set_linearityCoeffs(pRetVal: PSafeArray); safecall;
    function Get_maxLaserPowerMW: Single; safecall;
    procedure Set_maxLaserPowerMW(pRetVal: Single); safecall;
    function Get_minLaserPowerMW: Single; safecall;
    procedure Set_minLaserPowerMW(pRetVal: Single); safecall;
    function Get_laserExcitationWavelengthNMFloat: Single; safecall;
    procedure Set_laserExcitationWavelengthNMFloat(pRetVal: Single); safecall;
    function Get_laserPowerCoeffs: PSafeArray; safecall;
    procedure Set_laserPowerCoeffs(pRetVal: PSafeArray); safecall;
    function Get_userData: PSafeArray; safecall;
    procedure Set_userData(pRetVal: PSafeArray); safecall;
    function Get_userText: WideString; safecall;
    procedure Set_userText(const pRetVal: WideString); safecall;
    function Get_badPixels: PSafeArray; safecall;
    procedure Set_badPixels(pRetVal: PSafeArray); safecall;
    function Get_productConfiguration: WideString; safecall;
    procedure Set_productConfiguration(const pRetVal: WideString); safecall;
    function write: WordBool; safecall;
    function read: WordBool; safecall;
    property format: Byte read Get_format write Set_format;
    property model: WideString read Get_model write Set_model;
    property serialNumber: WideString read Get_serialNumber write Set_serialNumber;
    property baudRate: LongWord read Get_baudRate write Set_baudRate;
    property hasCooling: WordBool read Get_hasCooling write Set_hasCooling;
    property hasBattery: WordBool read Get_hasBattery write Set_hasBattery;
    property hasLaser: WordBool read Get_hasLaser write Set_hasLaser;
    property excitationNM: Word read Get_excitationNM write Set_excitationNM;
    property slitSizeUM: Word read Get_slitSizeUM write Set_slitSizeUM;
    property startupIntegrationTimeMS: Word read Get_startupIntegrationTimeMS write Set_startupIntegrationTimeMS;
    property startupDetectorTemperatureDegC: Smallint read Get_startupDetectorTemperatureDegC write Set_startupDetectorTemperatureDegC;
    property startupTriggeringMode: Byte read Get_startupTriggeringMode write Set_startupTriggeringMode;
    property detectorGain: Single read Get_detectorGain write Set_detectorGain;
    property detectorOffset: Smallint read Get_detectorOffset write Set_detectorOffset;
    property detectorGainOdd: Single read Get_detectorGainOdd write Set_detectorGainOdd;
    property detectorOffsetOdd: Smallint read Get_detectorOffsetOdd write Set_detectorOffsetOdd;
    property wavecalCoeffs: PSafeArray read Get_wavecalCoeffs write Set_wavecalCoeffs;
    property degCToDACCoeffs: PSafeArray read Get_degCToDACCoeffs write Set_degCToDACCoeffs;
    property detectorTempMin: Smallint read Get_detectorTempMin write Set_detectorTempMin;
    property detectorTempMax: Smallint read Get_detectorTempMax write Set_detectorTempMax;
    property adcToDegCCoeffs: PSafeArray read Get_adcToDegCCoeffs write Set_adcToDegCCoeffs;
    property thermistorResistanceAt298K: Smallint read Get_thermistorResistanceAt298K write Set_thermistorResistanceAt298K;
    property thermistorBeta: Smallint read Get_thermistorBeta write Set_thermistorBeta;
    property calibrationDate: WideString read Get_calibrationDate write Set_calibrationDate;
    property calibrationBy: WideString read Get_calibrationBy write Set_calibrationBy;
    property detectorName: WideString read Get_detectorName write Set_detectorName;
    property activePixelsHoriz: Word read Get_activePixelsHoriz write Set_activePixelsHoriz;
    property activePixelsVert: Word read Get_activePixelsVert write Set_activePixelsVert;
    property minIntegrationTimeMS: LongWord read Get_minIntegrationTimeMS write Set_minIntegrationTimeMS;
    property maxIntegrationTimeMS: LongWord read Get_maxIntegrationTimeMS write Set_maxIntegrationTimeMS;
    property actualPixelsHoriz: Word read Get_actualPixelsHoriz write Set_actualPixelsHoriz;
    property ROIHorizStart: Word read Get_ROIHorizStart write Set_ROIHorizStart;
    property ROIHorizEnd: Word read Get_ROIHorizEnd write Set_ROIHorizEnd;
    property ROIVertRegionStart: PSafeArray read Get_ROIVertRegionStart write Set_ROIVertRegionStart;
    property ROIVertRegionEnd: PSafeArray read Get_ROIVertRegionEnd write Set_ROIVertRegionEnd;
    property linearityCoeffs: PSafeArray read Get_linearityCoeffs write Set_linearityCoeffs;
    property maxLaserPowerMW: Single read Get_maxLaserPowerMW write Set_maxLaserPowerMW;
    property minLaserPowerMW: Single read Get_minLaserPowerMW write Set_minLaserPowerMW;
    property laserExcitationWavelengthNMFloat: Single read Get_laserExcitationWavelengthNMFloat write Set_laserExcitationWavelengthNMFloat;
    property laserPowerCoeffs: PSafeArray read Get_laserPowerCoeffs write Set_laserPowerCoeffs;
    property userData: PSafeArray read Get_userData write Set_userData;
    property userText: WideString read Get_userText write Set_userText;
    property badPixels: PSafeArray read Get_badPixels write Set_badPixels;
    property productConfiguration: WideString read Get_productConfiguration write Set_productConfiguration;
  end;

// *********************************************************************//
// DispIntf:  IEEPROMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D6BC706B-4B50-4CFD-AFFC-6A01F56B92B4}
// *********************************************************************//
  IEEPROMDisp = dispinterface
    ['{D6BC706B-4B50-4CFD-AFFC-6A01F56B92B4}']
    property format: Byte dispid 1610743808;
    property model: WideString dispid 1610743810;
    property serialNumber: WideString dispid 1610743812;
    property baudRate: LongWord dispid 1610743814;
    property hasCooling: WordBool dispid 1610743816;
    property hasBattery: WordBool dispid 1610743818;
    property hasLaser: WordBool dispid 1610743820;
    property excitationNM: Word dispid 1610743822;
    property slitSizeUM: Word dispid 1610743824;
    property startupIntegrationTimeMS: Word dispid 1610743826;
    property startupDetectorTemperatureDegC: Smallint dispid 1610743828;
    property startupTriggeringMode: Byte dispid 1610743830;
    property detectorGain: Single dispid 1610743832;
    property detectorOffset: Smallint dispid 1610743834;
    property detectorGainOdd: Single dispid 1610743836;
    property detectorOffsetOdd: Smallint dispid 1610743838;
    property wavecalCoeffs: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743840;
    property degCToDACCoeffs: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743842;
    property detectorTempMin: Smallint dispid 1610743844;
    property detectorTempMax: Smallint dispid 1610743846;
    property adcToDegCCoeffs: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743848;
    property thermistorResistanceAt298K: Smallint dispid 1610743850;
    property thermistorBeta: Smallint dispid 1610743852;
    property calibrationDate: WideString dispid 1610743854;
    property calibrationBy: WideString dispid 1610743856;
    property detectorName: WideString dispid 1610743858;
    property activePixelsHoriz: Word dispid 1610743860;
    property activePixelsVert: Word dispid 1610743862;
    property minIntegrationTimeMS: LongWord dispid 1610743864;
    property maxIntegrationTimeMS: LongWord dispid 1610743866;
    property actualPixelsHoriz: Word dispid 1610743868;
    property ROIHorizStart: Word dispid 1610743870;
    property ROIHorizEnd: Word dispid 1610743872;
    property ROIVertRegionStart: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743874;
    property ROIVertRegionEnd: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743876;
    property linearityCoeffs: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743878;
    property maxLaserPowerMW: Single dispid 1610743880;
    property minLaserPowerMW: Single dispid 1610743882;
    property laserExcitationWavelengthNMFloat: Single dispid 1610743884;
    property laserPowerCoeffs: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743886;
    property userData: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743888;
    property userText: WideString dispid 1610743890;
    property badPixels: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743892;
    property productConfiguration: WideString dispid 1610743894;
    function write: WordBool; dispid 1610743896;
    function read: WordBool; dispid 1610743897;
  end;

// *********************************************************************//
// Interface: ISpectrometer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7F04C891-E0AC-4F47-812E-C757CF2918B7}
// *********************************************************************//
  ISpectrometer = interface(IDispatch)
    ['{7F04C891-E0AC-4F47-812E-C757CF2918B7}']
    function Get_FeatureIdentification: IFeatureIdentification; safecall;
    function Get_FPGAOptions: IFPGAOptions; safecall;
    function Get_EEPROM: IEEPROM; safecall;
    function Get_isARM: WordBool; safecall;
    function Get_isSiG: WordBool; safecall;
    function Get_hasLaser: WordBool; safecall;
    function Get_pixels: LongWord; safecall;
    function Get_excitationWavelengthNM: Single; safecall;
    procedure Set_excitationWavelengthNM(pRetVal: Single); safecall;
    function Get_wavelengths: PSafeArray; safecall;
    function Get_wavenumbers: PSafeArray; safecall;
    function Get_model: WideString; safecall;
    function Get_serialNumber: WideString; safecall;
    function Get_scanAveraging: LongWord; safecall;
    procedure Set_scanAveraging(pRetVal: LongWord); safecall;
    function Get_boxcarHalfWidth: LongWord; safecall;
    procedure Set_boxcarHalfWidth(pRetVal: LongWord); safecall;
    function Get_dark: PSafeArray; safecall;
    procedure Set_dark(pRetVal: PSafeArray); safecall;
    function Get_actualFrames: Word; safecall;
    function Get_actualIntegrationTimeUS: LongWord; safecall;
    function Get_adcRaw: Word; safecall;
    function Get_batteryStateRaw: LongWord; safecall;
    function Get_batteryPercentage: Single; safecall;
    function Get_batteryCharging: WordBool; safecall;
    function Get_continuousAcquisitionEnable: WordBool; safecall;
    procedure Set_continuousAcquisitionEnable(pRetVal: WordBool); safecall;
    function Get_continuousFrames: Byte; safecall;
    procedure Set_continuousFrames(pRetVal: Byte); safecall;
    function Get_detectorGain: Single; safecall;
    procedure Set_detectorGain(pRetVal: Single); safecall;
    function Get_detectorOffset: Smallint; safecall;
    procedure Set_detectorOffset(pRetVal: Smallint); safecall;
    function Get_detectorGainOdd: Single; safecall;
    procedure Set_detectorGainOdd(pRetVal: Single); safecall;
    function Get_detectorOffsetOdd: Smallint; safecall;
    procedure Set_detectorOffsetOdd(pRetVal: Smallint); safecall;
    function Get_detectorSensingThreshold: Word; safecall;
    procedure Set_detectorSensingThreshold(pRetVal: Word); safecall;
    function Get_detectorSensingThresholdEnabled: WordBool; safecall;
    procedure Set_detectorSensingThresholdEnabled(pRetVal: WordBool); safecall;
    function Get_detectorTECEnabled: WordBool; safecall;
    procedure Set_detectorTECEnabled(pRetVal: WordBool); safecall;
    function Get_detectorTECSetpointDegC: Single; safecall;
    procedure Set_detectorTECSetpointDegC(pRetVal: Single); safecall;
    function Get_detectorTECSetpointRaw: Word; safecall;
    procedure Set_detectorTECSetpointRaw(pRetVal: Word); safecall;
    function Get_detectorTemperatureDegC: Single; safecall;
    function Get_detectorTemperatureRaw: Word; safecall;
    function Get_firmwareRevision: WideString; safecall;
    function Get_fpgaRevision: WideString; safecall;
    function Get_highGainModeEnabled: WordBool; safecall;
    procedure Set_highGainModeEnabled(pRetVal: WordBool); safecall;
    function Get_integrationTimeMS: LongWord; safecall;
    procedure Set_integrationTimeMS(pRetVal: LongWord); safecall;
    function Get_laserEnabled: WordBool; safecall;
    procedure Set_laserEnabled(pRetVal: WordBool); safecall;
    function Get_laserInterlockEnabled: WordBool; safecall;
    function Get_laserModulationEnabled: WordBool; safecall;
    procedure Set_laserModulationEnabled(pRetVal: WordBool); safecall;
    function Get_laserModulationLinkedToIntegrationTime: WordBool; safecall;
    procedure Set_laserModulationLinkedToIntegrationTime(pRetVal: WordBool); safecall;
    function Get_LaserPowerResolution: LaserPowerResolution; safecall;
    procedure Set_LaserPowerResolution(pRetVal: LaserPowerResolution); safecall;
    function Get_laserModulationPulseDelay: Largeuint; safecall;
    procedure Set_laserModulationPulseDelay(pRetVal: Largeuint); safecall;
    function Get_laserModulationPeriod: Largeuint; safecall;
    procedure Set_laserModulationPeriod(pRetVal: Largeuint); safecall;
    function Get_laserModulationDuration: Largeuint; safecall;
    procedure Set_laserModulationDuration(pRetVal: Largeuint); safecall;
    function Get_laserModulationPulseWidth: Largeuint; safecall;
    procedure Set_laserModulationPulseWidth(pRetVal: Largeuint); safecall;
    function Get_laserRampingEnabled: WordBool; safecall;
    procedure Set_laserRampingEnabled(pRetVal: WordBool); safecall;
    function Get_areaScanEnabled: WordBool; safecall;
    procedure Set_areaScanEnabled(pRetVal: WordBool); safecall;
    function Get_laserTemperatureDegC: Single; safecall;
    function Get_laserTemperatureRaw: Word; safecall;
    function Get_laserTemperatureSetpointRaw: Byte; safecall;
    procedure Set_laserTemperatureSetpointRaw(pRetVal: Byte); safecall;
    function Get_lineLength: LongWord; safecall;
    function Get_optCFSelect: WordBool; safecall;
    function Get_optAreaScan: WordBool; safecall;
    function Get_optActualIntegrationTime: WordBool; safecall;
    function Get_optHorizontalBinning: WordBool; safecall;
    function Get_optIntegrationTimeResolution: FPGA_INTEG_TIME_RES; safecall;
    function Get_optDataHeaderTag: FPGA_DATA_HEADER; safecall;
    function Get_optLaserType: FPGA_LASER_TYPE; safecall;
    function Get_optLaserControl: FPGA_LASER_CONTROL; safecall;
    function Get_primaryADC: Word; safecall;
    function Get_selectedADC: Byte; safecall;
    procedure Set_selectedADC(pRetVal: Byte); safecall;
    function Get_secondaryADC: Word; safecall;
    function Get_triggerDelay: LongWord; safecall;
    procedure Set_triggerDelay(pRetVal: LongWord); safecall;
    function Get_triggerOutput: EXTERNAL_TRIGGER_OUTPUT; safecall;
    procedure Set_triggerOutput(pRetVal: EXTERNAL_TRIGGER_OUTPUT); safecall;
    function Get_triggerSource: TRIGGER_SOURCE; safecall;
    procedure Set_triggerSource(pRetVal: TRIGGER_SOURCE); safecall;
    procedure close; safecall;
    function reconnect: WordBool; safecall;
    procedure regenerateWavelengths; safecall;
    function setDFUMode: WordBool; safecall;
    function setLaserPowerPercentage(perc: Single): WordBool; safecall;
    function getSpectrum: PSafeArray; safecall;
    property FeatureIdentification: IFeatureIdentification read Get_FeatureIdentification;
    property FPGAOptions: IFPGAOptions read Get_FPGAOptions;
    property EEPROM: IEEPROM read Get_EEPROM;
    property isARM: WordBool read Get_isARM;
    property isSiG: WordBool read Get_isSiG;
    property hasLaser: WordBool read Get_hasLaser;
    property pixels: LongWord read Get_pixels;
    property excitationWavelengthNM: Single read Get_excitationWavelengthNM write Set_excitationWavelengthNM;
    property wavelengths: PSafeArray read Get_wavelengths;
    property wavenumbers: PSafeArray read Get_wavenumbers;
    property model: WideString read Get_model;
    property serialNumber: WideString read Get_serialNumber;
    property scanAveraging: LongWord read Get_scanAveraging write Set_scanAveraging;
    property boxcarHalfWidth: LongWord read Get_boxcarHalfWidth write Set_boxcarHalfWidth;
    property dark: PSafeArray read Get_dark write Set_dark;
    property actualFrames: Word read Get_actualFrames;
    property actualIntegrationTimeUS: LongWord read Get_actualIntegrationTimeUS;
    property adcRaw: Word read Get_adcRaw;
    property batteryStateRaw: LongWord read Get_batteryStateRaw;
    property batteryPercentage: Single read Get_batteryPercentage;
    property batteryCharging: WordBool read Get_batteryCharging;
    property continuousAcquisitionEnable: WordBool read Get_continuousAcquisitionEnable write Set_continuousAcquisitionEnable;
    property continuousFrames: Byte read Get_continuousFrames write Set_continuousFrames;
    property detectorGain: Single read Get_detectorGain write Set_detectorGain;
    property detectorOffset: Smallint read Get_detectorOffset write Set_detectorOffset;
    property detectorGainOdd: Single read Get_detectorGainOdd write Set_detectorGainOdd;
    property detectorOffsetOdd: Smallint read Get_detectorOffsetOdd write Set_detectorOffsetOdd;
    property detectorSensingThreshold: Word read Get_detectorSensingThreshold write Set_detectorSensingThreshold;
    property detectorSensingThresholdEnabled: WordBool read Get_detectorSensingThresholdEnabled write Set_detectorSensingThresholdEnabled;
    property detectorTECEnabled: WordBool read Get_detectorTECEnabled write Set_detectorTECEnabled;
    property detectorTECSetpointDegC: Single read Get_detectorTECSetpointDegC write Set_detectorTECSetpointDegC;
    property detectorTECSetpointRaw: Word read Get_detectorTECSetpointRaw write Set_detectorTECSetpointRaw;
    property detectorTemperatureDegC: Single read Get_detectorTemperatureDegC;
    property detectorTemperatureRaw: Word read Get_detectorTemperatureRaw;
    property firmwareRevision: WideString read Get_firmwareRevision;
    property fpgaRevision: WideString read Get_fpgaRevision;
    property highGainModeEnabled: WordBool read Get_highGainModeEnabled write Set_highGainModeEnabled;
    property integrationTimeMS: LongWord read Get_integrationTimeMS write Set_integrationTimeMS;
    property laserEnabled: WordBool read Get_laserEnabled write Set_laserEnabled;
    property laserInterlockEnabled: WordBool read Get_laserInterlockEnabled;
    property laserModulationEnabled: WordBool read Get_laserModulationEnabled write Set_laserModulationEnabled;
    property laserModulationLinkedToIntegrationTime: WordBool read Get_laserModulationLinkedToIntegrationTime write Set_laserModulationLinkedToIntegrationTime;
    property LaserPowerResolution: LaserPowerResolution read Get_LaserPowerResolution write Set_LaserPowerResolution;
    property laserModulationPulseDelay: Largeuint read Get_laserModulationPulseDelay write Set_laserModulationPulseDelay;
    property laserModulationPeriod: Largeuint read Get_laserModulationPeriod write Set_laserModulationPeriod;
    property laserModulationDuration: Largeuint read Get_laserModulationDuration write Set_laserModulationDuration;
    property laserModulationPulseWidth: Largeuint read Get_laserModulationPulseWidth write Set_laserModulationPulseWidth;
    property laserRampingEnabled: WordBool read Get_laserRampingEnabled write Set_laserRampingEnabled;
    property areaScanEnabled: WordBool read Get_areaScanEnabled write Set_areaScanEnabled;
    property laserTemperatureDegC: Single read Get_laserTemperatureDegC;
    property laserTemperatureRaw: Word read Get_laserTemperatureRaw;
    property laserTemperatureSetpointRaw: Byte read Get_laserTemperatureSetpointRaw write Set_laserTemperatureSetpointRaw;
    property lineLength: LongWord read Get_lineLength;
    property optCFSelect: WordBool read Get_optCFSelect;
    property optAreaScan: WordBool read Get_optAreaScan;
    property optActualIntegrationTime: WordBool read Get_optActualIntegrationTime;
    property optHorizontalBinning: WordBool read Get_optHorizontalBinning;
    property optIntegrationTimeResolution: FPGA_INTEG_TIME_RES read Get_optIntegrationTimeResolution;
    property optDataHeaderTag: FPGA_DATA_HEADER read Get_optDataHeaderTag;
    property optLaserType: FPGA_LASER_TYPE read Get_optLaserType;
    property optLaserControl: FPGA_LASER_CONTROL read Get_optLaserControl;
    property primaryADC: Word read Get_primaryADC;
    property selectedADC: Byte read Get_selectedADC write Set_selectedADC;
    property secondaryADC: Word read Get_secondaryADC;
    property triggerDelay: LongWord read Get_triggerDelay write Set_triggerDelay;
    property triggerOutput: EXTERNAL_TRIGGER_OUTPUT read Get_triggerOutput write Set_triggerOutput;
    property triggerSource: TRIGGER_SOURCE read Get_triggerSource write Set_triggerSource;
  end;

// *********************************************************************//
// DispIntf:  ISpectrometerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7F04C891-E0AC-4F47-812E-C757CF2918B7}
// *********************************************************************//
  ISpectrometerDisp = dispinterface
    ['{7F04C891-E0AC-4F47-812E-C757CF2918B7}']
    property FeatureIdentification: IFeatureIdentification readonly dispid 1610743808;
    property FPGAOptions: IFPGAOptions readonly dispid 1610743809;
    property EEPROM: IEEPROM readonly dispid 1610743810;
    property isARM: WordBool readonly dispid 1610743811;
    property isSiG: WordBool readonly dispid 1610743812;
    property hasLaser: WordBool readonly dispid 1610743813;
    property pixels: LongWord readonly dispid 1610743814;
    property excitationWavelengthNM: Single dispid 1610743815;
    property wavelengths: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743817;
    property wavenumbers: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743818;
    property model: WideString readonly dispid 1610743819;
    property serialNumber: WideString readonly dispid 1610743820;
    property scanAveraging: LongWord dispid 1610743821;
    property boxcarHalfWidth: LongWord dispid 1610743823;
    property dark: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743825;
    property actualFrames: Word readonly dispid 1610743827;
    property actualIntegrationTimeUS: LongWord readonly dispid 1610743828;
    property adcRaw: Word readonly dispid 1610743829;
    property batteryStateRaw: LongWord readonly dispid 1610743830;
    property batteryPercentage: Single readonly dispid 1610743831;
    property batteryCharging: WordBool readonly dispid 1610743832;
    property continuousAcquisitionEnable: WordBool dispid 1610743833;
    property continuousFrames: Byte dispid 1610743835;
    property detectorGain: Single dispid 1610743837;
    property detectorOffset: Smallint dispid 1610743839;
    property detectorGainOdd: Single dispid 1610743841;
    property detectorOffsetOdd: Smallint dispid 1610743843;
    property detectorSensingThreshold: Word dispid 1610743845;
    property detectorSensingThresholdEnabled: WordBool dispid 1610743847;
    property detectorTECEnabled: WordBool dispid 1610743849;
    property detectorTECSetpointDegC: Single dispid 1610743851;
    property detectorTECSetpointRaw: Word dispid 1610743853;
    property detectorTemperatureDegC: Single readonly dispid 1610743855;
    property detectorTemperatureRaw: Word readonly dispid 1610743856;
    property firmwareRevision: WideString readonly dispid 1610743857;
    property fpgaRevision: WideString readonly dispid 1610743858;
    property highGainModeEnabled: WordBool dispid 1610743859;
    property integrationTimeMS: LongWord dispid 1610743861;
    property laserEnabled: WordBool dispid 1610743863;
    property laserInterlockEnabled: WordBool readonly dispid 1610743865;
    property laserModulationEnabled: WordBool dispid 1610743866;
    property laserModulationLinkedToIntegrationTime: WordBool dispid 1610743868;
    property LaserPowerResolution: LaserPowerResolution dispid 1610743870;
    property laserModulationPulseDelay: Largeuint dispid 1610743872;
    property laserModulationPeriod: Largeuint dispid 1610743874;
    property laserModulationDuration: Largeuint dispid 1610743876;
    property laserModulationPulseWidth: Largeuint dispid 1610743878;
    property laserRampingEnabled: WordBool dispid 1610743880;
    property areaScanEnabled: WordBool dispid 1610743882;
    property laserTemperatureDegC: Single readonly dispid 1610743884;
    property laserTemperatureRaw: Word readonly dispid 1610743885;
    property laserTemperatureSetpointRaw: Byte dispid 1610743886;
    property lineLength: LongWord readonly dispid 1610743888;
    property optCFSelect: WordBool readonly dispid 1610743889;
    property optAreaScan: WordBool readonly dispid 1610743890;
    property optActualIntegrationTime: WordBool readonly dispid 1610743891;
    property optHorizontalBinning: WordBool readonly dispid 1610743892;
    property optIntegrationTimeResolution: FPGA_INTEG_TIME_RES readonly dispid 1610743893;
    property optDataHeaderTag: FPGA_DATA_HEADER readonly dispid 1610743894;
    property optLaserType: FPGA_LASER_TYPE readonly dispid 1610743895;
    property optLaserControl: FPGA_LASER_CONTROL readonly dispid 1610743896;
    property primaryADC: Word readonly dispid 1610743897;
    property selectedADC: Byte dispid 1610743898;
    property secondaryADC: Word readonly dispid 1610743900;
    property triggerDelay: LongWord dispid 1610743901;
    property triggerOutput: EXTERNAL_TRIGGER_OUTPUT dispid 1610743903;
    property triggerSource: TRIGGER_SOURCE dispid 1610743905;
    procedure close; dispid 1610743907;
    function reconnect: WordBool; dispid 1610743908;
    procedure regenerateWavelengths; dispid 1610743909;
    function setDFUMode: WordBool; dispid 1610743910;
    function setLaserPowerPercentage(perc: Single): WordBool; dispid 1610743911;
    function getSpectrum: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743912;
  end;

// *********************************************************************//
// Interface: IUInt40
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5BC91277-C373-44F3-8C84-77964365F627}
// *********************************************************************//
  IUInt40 = interface(IDispatch)
    ['{5BC91277-C373-44F3-8C84-77964365F627}']
    function Get_LSW: Word; safecall;
    function Get_MidW: Word; safecall;
    function Get_MSB: Byte; safecall;
    function Get_buf: PSafeArray; safecall;
    property LSW: Word read Get_LSW;
    property MidW: Word read Get_MidW;
    property MSB: Byte read Get_MSB;
    property buf: PSafeArray read Get_buf;
  end;

// *********************************************************************//
// DispIntf:  IUInt40Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5BC91277-C373-44F3-8C84-77964365F627}
// *********************************************************************//
  IUInt40Disp = dispinterface
    ['{5BC91277-C373-44F3-8C84-77964365F627}']
    property LSW: Word readonly dispid 1610743808;
    property MidW: Word readonly dispid 1610743809;
    property MSB: Byte readonly dispid 1610743810;
    property buf: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743811;
  end;

// *********************************************************************//
// Interface: _ParseData
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F6B5DFEF-2A1D-30CF-8F11-08623387E532}
// *********************************************************************//
  _ParseData = interface(IDispatch)
    ['{F6B5DFEF-2A1D-30CF-8F11-08623387E532}']
  end;

// *********************************************************************//
// DispIntf:  _ParseDataDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {F6B5DFEF-2A1D-30CF-8F11-08623387E532}
// *********************************************************************//
  _ParseDataDisp = dispinterface
    ['{F6B5DFEF-2A1D-30CF-8F11-08623387E532}']
  end;

// *********************************************************************//
// Interface: _FunkyFloat
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {93BB3FDC-4DE0-3361-9B4D-82D313AF51D0}
// *********************************************************************//
  _FunkyFloat = interface(IDispatch)
    ['{93BB3FDC-4DE0-3361-9B4D-82D313AF51D0}']
  end;

// *********************************************************************//
// DispIntf:  _FunkyFloatDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {93BB3FDC-4DE0-3361-9B4D-82D313AF51D0}
// *********************************************************************//
  _FunkyFloatDisp = dispinterface
    ['{93BB3FDC-4DE0-3361-9B4D-82D313AF51D0}']
  end;

// *********************************************************************//
// Interface: _OpcodeHelper
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0464E676-8C2D-3E77-8A14-616733C73B49}
// *********************************************************************//
  _OpcodeHelper = interface(IDispatch)
    ['{0464E676-8C2D-3E77-8A14-616733C73B49}']
  end;

// *********************************************************************//
// DispIntf:  _OpcodeHelperDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0464E676-8C2D-3E77-8A14-616733C73B49}
// *********************************************************************//
  _OpcodeHelperDisp = dispinterface
    ['{0464E676-8C2D-3E77-8A14-616733C73B49}']
  end;

// *********************************************************************//
// Interface: _Util
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C4B1136D-9551-304A-B9BF-EE7FDECC0528}
// *********************************************************************//
  _Util = interface(IDispatch)
    ['{C4B1136D-9551-304A-B9BF-EE7FDECC0528}']
  end;

// *********************************************************************//
// DispIntf:  _UtilDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {C4B1136D-9551-304A-B9BF-EE7FDECC0528}
// *********************************************************************//
  _UtilDisp = dispinterface
    ['{C4B1136D-9551-304A-B9BF-EE7FDECC0528}']
  end;

// *********************************************************************//
// The Class CoFeatureIdentification provides a Create and CreateRemote method to          
// create instances of the default interface IFeatureIdentification exposed by              
// the CoClass FeatureIdentification. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFeatureIdentification = class
    class function Create: IFeatureIdentification;
    class function CreateRemote(const MachineName: string): IFeatureIdentification;
  end;

// *********************************************************************//
// The Class CoFPGAOptions provides a Create and CreateRemote method to          
// create instances of the default interface IFPGAOptions exposed by              
// the CoClass FPGAOptions. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFPGAOptions = class
    class function Create: IFPGAOptions;
    class function CreateRemote(const MachineName: string): IFPGAOptions;
  end;

// *********************************************************************//
// The Class CoEEPROM provides a Create and CreateRemote method to          
// create instances of the default interface IEEPROM exposed by              
// the CoClass EEPROM. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEEPROM = class
    class function Create: IEEPROM;
    class function CreateRemote(const MachineName: string): IEEPROM;
  end;

// *********************************************************************//
// The Class CoDriver provides a Create and CreateRemote method to          
// create instances of the default interface IDriver exposed by              
// the CoClass Driver. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDriver = class
    class function Create: IDriver;
    class function CreateRemote(const MachineName: string): IDriver;
  end;

// *********************************************************************//
// The Class CoLogger provides a Create and CreateRemote method to          
// create instances of the default interface ILogger exposed by              
// the CoClass Logger. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLogger = class
    class function Create: ILogger;
    class function CreateRemote(const MachineName: string): ILogger;
  end;

// *********************************************************************//
// The Class CoSpectrometer provides a Create and CreateRemote method to          
// create instances of the default interface ISpectrometer exposed by              
// the CoClass Spectrometer. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpectrometer = class
    class function Create: ISpectrometer;
    class function CreateRemote(const MachineName: string): ISpectrometer;
  end;

// *********************************************************************//
// The Class CoDriverVBAWrapper provides a Create and CreateRemote method to          
// create instances of the default interface IDriverVBAWrapper exposed by              
// the CoClass DriverVBAWrapper. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDriverVBAWrapper = class
    class function Create: IDriverVBAWrapper;
    class function CreateRemote(const MachineName: string): IDriverVBAWrapper;
  end;

// *********************************************************************//
// The Class CoAcquisitionStatus provides a Create and CreateRemote method to          
// create instances of the default interface _AcquisitionStatus exposed by              
// the CoClass AcquisitionStatus. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAcquisitionStatus = class
    class function Create: _AcquisitionStatus;
    class function CreateRemote(const MachineName: string): _AcquisitionStatus;
  end;

// *********************************************************************//
// The Class CoParseData provides a Create and CreateRemote method to          
// create instances of the default interface _ParseData exposed by              
// the CoClass ParseData. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoParseData = class
    class function Create: _ParseData;
    class function CreateRemote(const MachineName: string): _ParseData;
  end;

// *********************************************************************//
// The Class CoFunkyFloat provides a Create and CreateRemote method to          
// create instances of the default interface _FunkyFloat exposed by              
// the CoClass FunkyFloat. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFunkyFloat = class
    class function Create: _FunkyFloat;
    class function CreateRemote(const MachineName: string): _FunkyFloat;
  end;

// *********************************************************************//
// The Class CoOpcodeHelper provides a Create and CreateRemote method to          
// create instances of the default interface _OpcodeHelper exposed by              
// the CoClass OpcodeHelper. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOpcodeHelper = class
    class function Create: _OpcodeHelper;
    class function CreateRemote(const MachineName: string): _OpcodeHelper;
  end;

// *********************************************************************//
// The Class CoUtil provides a Create and CreateRemote method to          
// create instances of the default interface _Util exposed by              
// the CoClass Util. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUtil = class
    class function Create: _Util;
    class function CreateRemote(const MachineName: string): _Util;
  end;

implementation

uses System.Win.ComObj;

class function CoFeatureIdentification.Create: IFeatureIdentification;
begin
  Result := CreateComObject(CLASS_FeatureIdentification) as IFeatureIdentification;
end;

class function CoFeatureIdentification.CreateRemote(const MachineName: string): IFeatureIdentification;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FeatureIdentification) as IFeatureIdentification;
end;

class function CoFPGAOptions.Create: IFPGAOptions;
begin
  Result := CreateComObject(CLASS_FPGAOptions) as IFPGAOptions;
end;

class function CoFPGAOptions.CreateRemote(const MachineName: string): IFPGAOptions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FPGAOptions) as IFPGAOptions;
end;

class function CoEEPROM.Create: IEEPROM;
begin
  Result := CreateComObject(CLASS_EEPROM) as IEEPROM;
end;

class function CoEEPROM.CreateRemote(const MachineName: string): IEEPROM;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EEPROM) as IEEPROM;
end;

class function CoDriver.Create: IDriver;
begin
  Result := CreateComObject(CLASS_Driver) as IDriver;
end;

class function CoDriver.CreateRemote(const MachineName: string): IDriver;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Driver) as IDriver;
end;

class function CoLogger.Create: ILogger;
begin
  Result := CreateComObject(CLASS_Logger) as ILogger;
end;

class function CoLogger.CreateRemote(const MachineName: string): ILogger;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Logger) as ILogger;
end;

class function CoSpectrometer.Create: ISpectrometer;
begin
  Result := CreateComObject(CLASS_Spectrometer) as ISpectrometer;
end;

class function CoSpectrometer.CreateRemote(const MachineName: string): ISpectrometer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Spectrometer) as ISpectrometer;
end;

class function CoDriverVBAWrapper.Create: IDriverVBAWrapper;
begin
  Result := CreateComObject(CLASS_DriverVBAWrapper) as IDriverVBAWrapper;
end;

class function CoDriverVBAWrapper.CreateRemote(const MachineName: string): IDriverVBAWrapper;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DriverVBAWrapper) as IDriverVBAWrapper;
end;

class function CoAcquisitionStatus.Create: _AcquisitionStatus;
begin
  Result := CreateComObject(CLASS_AcquisitionStatus) as _AcquisitionStatus;
end;

class function CoAcquisitionStatus.CreateRemote(const MachineName: string): _AcquisitionStatus;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AcquisitionStatus) as _AcquisitionStatus;
end;

class function CoParseData.Create: _ParseData;
begin
  Result := CreateComObject(CLASS_ParseData) as _ParseData;
end;

class function CoParseData.CreateRemote(const MachineName: string): _ParseData;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ParseData) as _ParseData;
end;

class function CoFunkyFloat.Create: _FunkyFloat;
begin
  Result := CreateComObject(CLASS_FunkyFloat) as _FunkyFloat;
end;

class function CoFunkyFloat.CreateRemote(const MachineName: string): _FunkyFloat;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FunkyFloat) as _FunkyFloat;
end;

class function CoOpcodeHelper.Create: _OpcodeHelper;
begin
  Result := CreateComObject(CLASS_OpcodeHelper) as _OpcodeHelper;
end;

class function CoOpcodeHelper.CreateRemote(const MachineName: string): _OpcodeHelper;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OpcodeHelper) as _OpcodeHelper;
end;

class function CoUtil.Create: _Util;
begin
  Result := CreateComObject(CLASS_Util) as _Util;
end;

class function CoUtil.CreateRemote(const MachineName: string): _Util;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Util) as _Util;
end;

end.
