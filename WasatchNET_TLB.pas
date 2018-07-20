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
// File generated on 29.05.2018 16:57:36 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Windows\WasatchNET.tlb (1)
// LIBID: {6C29D82F-9444-4CA0-A061-213F1A56DE8D}
// LCID: 0
// Helpfile: 
// HelpString: .NET application wrapper for Wasatch Photonics spectrometers
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
//   (3) v2.0 System_Windows_Forms, (C:\Windows\Microsoft.NET\Framework\v2.0.50727\System.Windows.Forms.tlb)
// SYS_KIND: SYS_WIN32
// Errors:
//   Error creating palette bitmap of (TAcquisitionStatus) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TFeatureIdentification) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TFPGAOptions) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TModelConfig) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TParseData) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TFunkyFloat) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TOpcodeHelper) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TDriver) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TLogger) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TSpectrometer) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TUtil) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TDriverVBAWrapper) : Server mscoree.dll contains no icons
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
  WasatchNETMajorVersion = 1;
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
  IID_IModelConfig: TGUID = '{D6BC706B-4B50-4CFD-AFFC-6A01F56B92B4}';
  IID_IOpcodeHelper: TGUID = '{DC076FE7-2203-4B6F-867C-287E982D007A}';
  IID_ISpectrometer: TGUID = '{7F04C891-E0AC-4F47-812E-C757CF2918B7}';
  IID_IUInt40: TGUID = '{5BC91277-C373-44F3-8C84-77964365F627}';
  CLASS_ModelConfig: TGUID = '{A224D5A7-A0E0-4AAC-8489-4BB0CED3171B}';
  IID__ParseData: TGUID = '{F6B5DFEF-2A1D-30CF-8F11-08623387E532}';
  IID__FunkyFloat: TGUID = '{93BB3FDC-4DE0-3361-9B4D-82D313AF51D0}';
  CLASS_OpcodeHelper: TGUID = '{1CA5AF48-05E6-4A91-96D2-0DF78CB9DCF7}';
  CLASS_Driver: TGUID = '{E71326C8-C2BC-404F-81E4-394D95541A24}';
  CLASS_Logger: TGUID = '{5FED8E72-15B1-4ACA-B730-3B3006364D23}';
  CLASS_Spectrometer: TGUID = '{06DF0AB6-741E-43D8-92EF-E14CB74070D7}';
  IID__Util: TGUID = '{C4B1136D-9551-304A-B9BF-EE7FDECC0528}';
  IID__DriverVBAWrapper: TGUID = '{24EAD020-BD84-367D-A2E7-731BD5692062}';
  CLASS_AcquisitionStatus: TGUID = '{5FCC0C98-E1F4-368D-B9EB-E49D82831E41}';
  CLASS_ParseData: TGUID = '{D14D708F-E2FA-3B4B-8BAE-CC4945ED52AC}';
  CLASS_FunkyFloat: TGUID = '{6681BB3A-9ACB-37B1-804A-C67FE035A307}';
  CLASS_Util: TGUID = '{05B4D0C4-E150-3A5C-BE2D-1EC5CFB7CF1F}';
  CLASS_DriverVBAWrapper: TGUID = '{E253CACE-A702-4A11-B285-D9B9E18886E4}';

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
  BOARD_TYPES_STROKER_ARM = $00000003;
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

// Constants for enum CCD_TRIGGER_SOURCE
type
  CCD_TRIGGER_SOURCE = TOleEnum;
const
  CCD_TRIGGER_SOURCE_USB = $00000000;
  CCD_TRIGGER_SOURCE_EXTERNAL = $00000001;
  CCD_TRIGGER_SOURCE_ERROR = $00000002;

// Constants for enum EXTERNAL_TRIGGER_OUTPUT
type
  EXTERNAL_TRIGGER_OUTPUT = TOleEnum;
const
  EXTERNAL_TRIGGER_OUTPUT_LASER_MODULATION = $00000000;
  EXTERNAL_TRIGGER_OUTPUT_INTEGRATION_ACTIVE_PULSE = $00000001;
  EXTERNAL_TRIGGER_OUTPUT_ERROR = $00000002;

// Constants for enum HORIZ_BINNING
type
  HORIZ_BINNING = TOleEnum;
const
  HORIZ_BINNING_NONE = $00000000;
  HORIZ_BINNING_TWO_PIXEL = $00000001;
  HORIZ_BINNING_FOUR_PIXEL = $00000002;
  HORIZ_BINNING_ERROR = $00000003;

// Constants for enum Opcodes
type
  Opcodes = TOleEnum;
const
  Opcodes_ACQUIRE_CCD = $00000000;
  Opcodes_GET_ACTUAL_FRAMES = $00000001;
  Opcodes_GET_ACTUAL_INTEGRATION_TIME = $00000002;
  Opcodes_GET_CCD_GAIN = $00000003;
  Opcodes_GET_CCD_OFFSET = $00000004;
  Opcodes_GET_CCD_SENSING_THRESHOLD = $00000005;
  Opcodes_GET_CCD_TEMP = $00000006;
  Opcodes_GET_CCD_TEMP_ENABLE = $00000007;
  Opcodes_GET_CCD_TEMP_SETPOINT = $00000008;
  Opcodes_GET_CCD_THRESHOLD_SENSING_MODE = $00000009;
  Opcodes_GET_CCD_TRIGGER_SOURCE = $0000000A;
  Opcodes_GET_CF_SELECT = $0000000B;
  Opcodes_GET_CODE_REVISION = $0000000C;
  Opcodes_GET_DAC = $0000000D;
  Opcodes_GET_EXTERNAL_TRIGGER_OUTPUT = $0000000E;
  Opcodes_GET_FPGA_REV = $0000000F;
  Opcodes_GET_HORIZ_BINNING = $00000010;
  Opcodes_GET_INTEGRATION_TIME = $00000011;
  Opcodes_GET_INTERLOCK = $00000012;
  Opcodes_GET_LASER_ENABLED = $00000013;
  Opcodes_GET_LASER_MOD_DURATION = $00000014;
  Opcodes_GET_LASER_MOD_ENABLED = $00000015;
  Opcodes_GET_LASER_MOD_PULSE_WIDTH = $00000016;
  Opcodes_GET_LASER_RAMPING_MODE = $00000017;
  Opcodes_GET_LASER_TEMP = $00000018;
  Opcodes_GET_LASER_TEMP_SETPOINT = $00000019;
  Opcodes_GET_LINE_LENGTH = $0000001A;
  Opcodes_GET_LINK_LASER_MOD_TO_INTEGRATION_TIME = $0000001B;
  Opcodes_GET_MODEL_CONFIG = $0000001C;
  Opcodes_GET_MOD_PERIOD = $0000001D;
  Opcodes_GET_MOD_PULSE_DELAY = $0000001E;
  Opcodes_GET_SELECTED_LASER = $0000001F;
  Opcodes_GET_TRIGGER_DELAY = $00000020;
  Opcodes_LINK_LASER_MOD_TO_INTEGRATION_TIME = $00000021;
  Opcodes_OPT_ACT_INT_TIME = $00000022;
  Opcodes_OPT_AREA_SCAN = $00000023;
  Opcodes_OPT_CF_SELECT = $00000024;
  Opcodes_OPT_DATA_HDR_TAB = $00000025;
  Opcodes_OPT_HORIZONTAL_BINNING = $00000026;
  Opcodes_OPT_INT_TIME_RES = $00000027;
  Opcodes_OPT_LASER = $00000028;
  Opcodes_OPT_LASER_CONTROL = $00000029;
  Opcodes_POLL_DATA = $0000002A;
  Opcodes_READ_COMPILATION_OPTIONS = $0000002B;
  Opcodes_SECOND_TIER_COMMAND = $0000002C;
  Opcodes_SELECT_HORIZ_BINNING = $0000002D;
  Opcodes_SELECT_LASER = $0000002E;
  Opcodes_SET_CCD_GAIN = $0000002F;
  Opcodes_SET_CCD_OFFSET = $00000030;
  Opcodes_SET_CCD_SENSING_THRESHOLD = $00000031;
  Opcodes_SET_CCD_TEC_ENABLE = $00000032;
  Opcodes_SET_CCD_TEMP_SETPOINT = $00000033;
  Opcodes_SET_CCD_THRESHOLD_SENSING_MODE = $00000034;
  Opcodes_SET_CCD_TRIGGER_SOURCE = $00000035;
  Opcodes_SET_CF_SELECT = $00000036;
  Opcodes_SET_DAC = $00000037;
  Opcodes_SET_DFU_MODE = $00000038;
  Opcodes_SET_EXTERNAL_TRIGGER_OUTPUT = $00000039;
  Opcodes_SET_INTEGRATION_TIME = $0000003A;
  Opcodes_SET_LASER_ENABLED = $0000003B;
  Opcodes_SET_LASER_MOD_DURATION = $0000003C;
  Opcodes_SET_LASER_MOD_ENABLED = $0000003D;
  Opcodes_SET_LASER_MOD_PULSE_WIDTH = $0000003E;
  Opcodes_SET_LASER_RAMPING_MODE = $0000003F;
  Opcodes_SET_LASER_TEMP_SETPOINT = $00000040;
  Opcodes_SET_MODEL_CONFIG_DO_NOT_USE = $00000041;
  Opcodes_SET_MODEL_CONFIG_REAL = $00000042;
  Opcodes_SET_MOD_PERIOD = $00000043;
  Opcodes_SET_MOD_PULSE_DELAY = $00000044;
  Opcodes_SET_TRIGGER_DELAY = $00000045;
  Opcodes_VR_GET_CONTINUOUS_CCD = $00000046;
  Opcodes_VR_GET_NUM_FRAMES = $00000047;
  Opcodes_VR_SET_CONTINUOUS_CCD = $00000048;
  Opcodes_VR_SET_NUM_FRAMES = $00000049;

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
  IModelConfig = interface;
  IModelConfigDisp = dispinterface;
  IOpcodeHelper = interface;
  IOpcodeHelperDisp = dispinterface;
  ISpectrometer = interface;
  ISpectrometerDisp = dispinterface;
  IUInt40 = interface;
  IUInt40Disp = dispinterface;
  _ParseData = interface;
  _ParseDataDisp = dispinterface;
  _FunkyFloat = interface;
  _FunkyFloatDisp = dispinterface;
  _Util = interface;
  _UtilDisp = dispinterface;
  _DriverVBAWrapper = interface;
  _DriverVBAWrapperDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  FeatureIdentification = IFeatureIdentification;
  FPGAOptions = IFPGAOptions;
  ModelConfig = IModelConfig;
  OpcodeHelper = IOpcodeHelper;
  Driver = IDriver;
  Logger = ILogger;
  Spectrometer = ISpectrometer;
  AcquisitionStatus = _AcquisitionStatus;
  ParseData = _ParseData;
  FunkyFloat = _FunkyFloat;
  Util = _Util;
  DriverVBAWrapper = _DriverVBAWrapper;


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
    property boardType: BOARD_TYPES read Get_boardType;
    property firmwarePartNum: WideString read Get_firmwarePartNum;
    property firmwareDesc: WideString read Get_firmwareDesc;
    property isSupported: WordBool read Get_isSupported;
    property defaultPixels: LongWord read Get_defaultPixels;
    property spectraBlockSize: LongWord read Get_spectraBlockSize;
    property usbDelayMS: LongWord read Get_usbDelayMS;
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
    procedure error(const fmt: WideString; obj: PSafeArray); safecall;
    procedure info(const fmt: WideString; obj: PSafeArray); safecall;
    procedure debug(const fmt: WideString; obj: PSafeArray); safecall;
    procedure save(const pathname: WideString); safecall;
    procedure hexdump(buf: PSafeArray; const prefix: WideString); safecall;
    procedure GhostMethod_ILogger_52_1; safecall;
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
    function hasError: WordBool; dispid 1610743815;
    procedure error(const fmt: WideString; obj: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743816;
    procedure info(const fmt: WideString; obj: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743817;
    procedure debug(const fmt: WideString; obj: {NOT_OLEAUTO(PSafeArray)}OleVariant); dispid 1610743818;
    procedure save(const pathname: WideString); dispid 1610743819;
    procedure hexdump(buf: {NOT_OLEAUTO(PSafeArray)}OleVariant; const prefix: WideString); dispid 1610743820;
  end;

// *********************************************************************//
// Interface: IModelConfig
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D6BC706B-4B50-4CFD-AFFC-6A01F56B92B4}
// *********************************************************************//
  IModelConfig = interface(IDispatch)
    ['{D6BC706B-4B50-4CFD-AFFC-6A01F56B92B4}']
    function Get_model: WideString; safecall;
    function Get_serialNumber: WideString; safecall;
    function Get_baudRate: Integer; safecall;
    function Get_hasCooling: WordBool; safecall;
    function Get_hasBattery: WordBool; safecall;
    function Get_hasLaser: WordBool; safecall;
    function Get_excitationNM: Smallint; safecall;
    function Get_slitSizeUM: Smallint; safecall;
    function Get_wavecalCoeffs: PSafeArray; safecall;
    procedure Set_wavecalCoeffs(pRetVal: PSafeArray); safecall;
    function Get_degCToDACCoeffs: PSafeArray; safecall;
    function Get_detectorTempMin: Smallint; safecall;
    function Get_detectorTempMax: Smallint; safecall;
    function Get_adcToDegCCoeffs: PSafeArray; safecall;
    function Get_thermistorResistanceAt298K: Smallint; safecall;
    function Get_thermistorBeta: Smallint; safecall;
    function Get_calibrationDate: WideString; safecall;
    procedure Set_calibrationDate(const pRetVal: WideString); safecall;
    function Get_calibrationBy: WideString; safecall;
    procedure Set_calibrationBy(const pRetVal: WideString); safecall;
    function Get_detectorName: WideString; safecall;
    function Get_activePixelsHoriz: Smallint; safecall;
    function Get_activePixelsVert: Smallint; safecall;
    function Get_minIntegrationTimeMS: Word; safecall;
    function Get_maxIntegrationTimeMS: Word; safecall;
    function Get_actualHoriz: Smallint; safecall;
    function Get_ROIHorizStart: Smallint; safecall;
    procedure Set_ROIHorizStart(pRetVal: Smallint); safecall;
    function Get_ROIHorizEnd: Smallint; safecall;
    procedure Set_ROIHorizEnd(pRetVal: Smallint); safecall;
    function Get_ROIVertRegionStart: PSafeArray; safecall;
    function Get_ROIVertRegionEnd: PSafeArray; safecall;
    function Get_linearityCoeffs: PSafeArray; safecall;
    procedure Set_linearityCoeffs(pRetVal: PSafeArray); safecall;
    function Get_userData: PSafeArray; safecall;
    function Get_userText: WideString; safecall;
    procedure Set_userText(const pRetVal: WideString); safecall;
    function Get_badPixels: PSafeArray; safecall;
    function write: WordBool; safecall;
    procedure GhostMethod_IModelConfig_28_1; safecall;
    property model: WideString read Get_model;
    property serialNumber: WideString read Get_serialNumber;
    property baudRate: Integer read Get_baudRate;
    property hasCooling: WordBool read Get_hasCooling;
    property hasBattery: WordBool read Get_hasBattery;
    property hasLaser: WordBool read Get_hasLaser;
    property excitationNM: Smallint read Get_excitationNM;
    property slitSizeUM: Smallint read Get_slitSizeUM;
    property wavecalCoeffs: PSafeArray read Get_wavecalCoeffs write Set_wavecalCoeffs;
    property degCToDACCoeffs: PSafeArray read Get_degCToDACCoeffs;
    property detectorTempMin: Smallint read Get_detectorTempMin;
    property detectorTempMax: Smallint read Get_detectorTempMax;
    property adcToDegCCoeffs: PSafeArray read Get_adcToDegCCoeffs;
    property thermistorResistanceAt298K: Smallint read Get_thermistorResistanceAt298K;
    property thermistorBeta: Smallint read Get_thermistorBeta;
    property calibrationDate: WideString read Get_calibrationDate write Set_calibrationDate;
    property calibrationBy: WideString read Get_calibrationBy write Set_calibrationBy;
    property detectorName: WideString read Get_detectorName;
    property activePixelsHoriz: Smallint read Get_activePixelsHoriz;
    property activePixelsVert: Smallint read Get_activePixelsVert;
    property minIntegrationTimeMS: Word read Get_minIntegrationTimeMS;
    property maxIntegrationTimeMS: Word read Get_maxIntegrationTimeMS;
    property actualHoriz: Smallint read Get_actualHoriz;
    property ROIHorizStart: Smallint read Get_ROIHorizStart write Set_ROIHorizStart;
    property ROIHorizEnd: Smallint read Get_ROIHorizEnd write Set_ROIHorizEnd;
    property ROIVertRegionStart: PSafeArray read Get_ROIVertRegionStart;
    property ROIVertRegionEnd: PSafeArray read Get_ROIVertRegionEnd;
    property linearityCoeffs: PSafeArray read Get_linearityCoeffs write Set_linearityCoeffs;
    property userData: PSafeArray read Get_userData;
    property userText: WideString read Get_userText write Set_userText;
    property badPixels: PSafeArray read Get_badPixels;
  end;

// *********************************************************************//
// DispIntf:  IModelConfigDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D6BC706B-4B50-4CFD-AFFC-6A01F56B92B4}
// *********************************************************************//
  IModelConfigDisp = dispinterface
    ['{D6BC706B-4B50-4CFD-AFFC-6A01F56B92B4}']
    property model: WideString readonly dispid 1610743809;
    property serialNumber: WideString readonly dispid 1610743810;
    property baudRate: Integer readonly dispid 1610743811;
    property hasCooling: WordBool readonly dispid 1610743812;
    property hasBattery: WordBool readonly dispid 1610743813;
    property hasLaser: WordBool readonly dispid 1610743814;
    property excitationNM: Smallint readonly dispid 1610743815;
    property slitSizeUM: Smallint readonly dispid 1610743816;
    property wavecalCoeffs: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743817;
    property degCToDACCoeffs: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743819;
    property detectorTempMin: Smallint readonly dispid 1610743820;
    property detectorTempMax: Smallint readonly dispid 1610743821;
    property adcToDegCCoeffs: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743822;
    property thermistorResistanceAt298K: Smallint readonly dispid 1610743823;
    property thermistorBeta: Smallint readonly dispid 1610743824;
    property calibrationDate: WideString dispid 1610743825;
    property calibrationBy: WideString dispid 1610743827;
    property detectorName: WideString readonly dispid 1610743829;
    property activePixelsHoriz: Smallint readonly dispid 1610743830;
    property activePixelsVert: Smallint readonly dispid 1610743831;
    property minIntegrationTimeMS: Word readonly dispid 1610743832;
    property maxIntegrationTimeMS: Word readonly dispid 1610743833;
    property actualHoriz: Smallint readonly dispid 1610743834;
    property ROIHorizStart: Smallint dispid 1610743835;
    property ROIHorizEnd: Smallint dispid 1610743837;
    property ROIVertRegionStart: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743839;
    property ROIVertRegionEnd: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743840;
    property linearityCoeffs: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743841;
    property userData: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743843;
    property userText: WideString dispid 1610743844;
    property badPixels: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743846;
    function write: WordBool; dispid 1610743847;
  end;

// *********************************************************************//
// Interface: IOpcodeHelper
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DC076FE7-2203-4B6F-867C-287E982D007A}
// *********************************************************************//
  IOpcodeHelper = interface(IDispatch)
    ['{DC076FE7-2203-4B6F-867C-287E982D007A}']
  end;

// *********************************************************************//
// DispIntf:  IOpcodeHelperDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {DC076FE7-2203-4B6F-867C-287E982D007A}
// *********************************************************************//
  IOpcodeHelperDisp = dispinterface
    ['{DC076FE7-2203-4B6F-867C-287E982D007A}']
  end;

// *********************************************************************//
// Interface: ISpectrometer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7F04C891-E0AC-4F47-812E-C757CF2918B7}
// *********************************************************************//
  ISpectrometer = interface(IDispatch)
    ['{7F04C891-E0AC-4F47-812E-C757CF2918B7}']
    function Get_pixels: LongWord; safecall;
    function Get_wavelengths: PSafeArray; safecall;
    function Get_wavenumbers: PSafeArray; safecall;
    function Get_model: WideString; safecall;
    function Get_serialNumber: WideString; safecall;
    function Get_FeatureIdentification: IFeatureIdentification; safecall;
    function Get_FPGAOptions: IFPGAOptions; safecall;
    function Get_ModelConfig: IModelConfig; safecall;
    function Get_laserRampingEnabled: WordBool; safecall;
    procedure Set_laserRampingEnabled(pRetVal: WordBool); safecall;
    function Get_integrationTimeMS: LongWord; safecall;
    procedure Set_integrationTimeMS(pRetVal: LongWord); safecall;
    function Get_scanAveraging: LongWord; safecall;
    procedure Set_scanAveraging(pRetVal: LongWord); safecall;
    function Get_boxcarHalfWidth: LongWord; safecall;
    procedure Set_boxcarHalfWidth(pRetVal: LongWord); safecall;
    function Get_dark: PSafeArray; safecall;
    procedure Set_dark(pRetVal: PSafeArray); safecall;
    procedure close; safecall;
    function isARM: WordBool; safecall;
    function hasLaser: WordBool; safecall;
    function reconnect: WordBool; safecall;
    function setCCDTriggerSource(source: Word): WordBool; safecall;
    function setExternalTriggerOutput(value: EXTERNAL_TRIGGER_OUTPUT): WordBool; safecall;
    function setTriggerDelay(value: LongWord): WordBool; safecall;
    function setLaserRampingEnable(flag: WordBool): WordBool; safecall;
    function setHorizontalBinning(mode: HORIZ_BINNING): WordBool; safecall;
    function setCCDTemperatureSetpointDegC(degC: Single): WordBool; safecall;
    function setDFUMode(flag: WordBool): WordBool; safecall;
    function setHighGainModeEnabled(flag: WordBool): WordBool; safecall;
    function setCCDGain(gain: Single): WordBool; safecall;
    function setCCDTemperatureEnable(flag: WordBool): WordBool; safecall;
    function setDAC(word: Word): WordBool; safecall;
    function setCCDOffset(value: Word): WordBool; safecall;
    function setCCDSensingThreshold(value: Word): WordBool; safecall;
    function setCCDThresholdSensingEnable(flag: WordBool): WordBool; safecall;
    function getIntegrationTimeMS: LongWord; safecall;
    function getFPGARev: WideString; safecall;
    function getFirmwareRev: WideString; safecall;
    function getCCDTriggerSource: CCD_TRIGGER_SOURCE; safecall;
    function getExternalTriggerOutput: EXTERNAL_TRIGGER_OUTPUT; safecall;
    function getHorizBinning: HORIZ_BINNING; safecall;
    function getActualIntegrationTimeUS: LongWord; safecall;
    function getLaserRampingEnabled: WordBool; safecall;
    function getHighGainModeEnabled: WordBool; safecall;
    function getCCDTriggerDelay: LongWord; safecall;
    function getCCDTemperatureRaw: Word; safecall;
    function getCCDTemperatureDegC: Single; safecall;
    function getLaserTemperatureSetpoint: Byte; safecall;
    function getActualFrames: Word; safecall;
    function getCCDGain: Single; safecall;
    function getCCDOffset: Word; safecall;
    function getCCDSensingThreshold: Word; safecall;
    function getCCDThresholdSensingEnabled: WordBool; safecall;
    function getCCDTempEnabled: WordBool; safecall;
    function getDAC: Word; safecall;
    function getInterlockEnabled: WordBool; safecall;
    function getLaserEnabled: WordBool; safecall;
    function getLaserModulationEnabled: WordBool; safecall;
    function getLaserModulationDuration: Largeuint; safecall;
    function getLaserModulationPeriod: Largeuint; safecall;
    function getLaserModulationPulseDelay: Largeuint; safecall;
    function getLaserModulationPulseWidth: Largeuint; safecall;
    function getLineLength: LongWord; safecall;
    function getSelectedLaser: Byte; safecall;
    function getLaserModulationLinkedToIntegrationTime: WordBool; safecall;
    function getOptCFSelect: WordBool; safecall;
    function getOptAreaScan: WordBool; safecall;
    function getOptActIntTime: WordBool; safecall;
    function getOptHorizontalBinning: WordBool; safecall;
    function getOptIntTimeRes: FPGA_INTEG_TIME_RES; safecall;
    function getOptDataHdrTab: FPGA_DATA_HEADER; safecall;
    function getOptLaserType: FPGA_LASER_TYPE; safecall;
    function getOptLaserControl: FPGA_LASER_CONTROL; safecall;
    function getLaserTemperatureRaw: Word; safecall;
    function getLaserTemperatureDegC: Single; safecall;
    function getDetectorSetpointRaw: Word; safecall;
    procedure setContinuousCCDEnable(flag: WordBool); safecall;
    function getContinuousCCDEnable: WordBool; safecall;
    procedure setContinuousCCDFrames(n: Byte); safecall;
    function getContinuousCCDFrames: Byte; safecall;
    function setLaserPowerPercentage(perc: Single): WordBool; safecall;
    function setLaserModulationDurationMicrosec(us: Largeuint): WordBool; safecall;
    function setLaserModulationPulseWidth(value: Largeuint): WordBool; safecall;
    function setLaserModulationPeriod(value: Largeuint): WordBool; safecall;
    function setLaserModulationPulseDelay(value: Largeuint): WordBool; safecall;
    function setLaserTemperatureSetpoint(value: Byte): WordBool; safecall;
    function setLaserModulationEnable(flag: WordBool): WordBool; safecall;
    function setSelectedLaser(id: Byte): WordBool; safecall;
    function linkLaserModToIntegrationTime(flag: WordBool): WordBool; safecall;
    function setLaserEnable(flag: WordBool): WordBool; safecall;
    function getSpectrum: PSafeArray; safecall;
    function blockUntilDataReady: WordBool; safecall;
    property pixels: LongWord read Get_pixels;
    property wavelengths: PSafeArray read Get_wavelengths;
    property wavenumbers: PSafeArray read Get_wavenumbers;
    property model: WideString read Get_model;
    property serialNumber: WideString read Get_serialNumber;
    property FeatureIdentification: IFeatureIdentification read Get_FeatureIdentification;
    property FPGAOptions: IFPGAOptions read Get_FPGAOptions;
    property ModelConfig: IModelConfig read Get_ModelConfig;
    property laserRampingEnabled: WordBool read Get_laserRampingEnabled write Set_laserRampingEnabled;
    property integrationTimeMS: LongWord read Get_integrationTimeMS write Set_integrationTimeMS;
    property scanAveraging: LongWord read Get_scanAveraging write Set_scanAveraging;
    property boxcarHalfWidth: LongWord read Get_boxcarHalfWidth write Set_boxcarHalfWidth;
    property dark: PSafeArray read Get_dark write Set_dark;
  end;

// *********************************************************************//
// DispIntf:  ISpectrometerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7F04C891-E0AC-4F47-812E-C757CF2918B7}
// *********************************************************************//
  ISpectrometerDisp = dispinterface
    ['{7F04C891-E0AC-4F47-812E-C757CF2918B7}']
    property pixels: LongWord readonly dispid 1610743808;
    property wavelengths: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743809;
    property wavenumbers: {NOT_OLEAUTO(PSafeArray)}OleVariant readonly dispid 1610743810;
    property model: WideString readonly dispid 1610743811;
    property serialNumber: WideString readonly dispid 1610743812;
    property FeatureIdentification: IFeatureIdentification readonly dispid 1610743813;
    property FPGAOptions: IFPGAOptions readonly dispid 1610743814;
    property ModelConfig: IModelConfig readonly dispid 1610743815;
    property laserRampingEnabled: WordBool dispid 1610743816;
    property integrationTimeMS: LongWord dispid 1610743818;
    property scanAveraging: LongWord dispid 1610743820;
    property boxcarHalfWidth: LongWord dispid 1610743822;
    property dark: {NOT_OLEAUTO(PSafeArray)}OleVariant dispid 1610743824;
    procedure close; dispid 1610743826;
    function isARM: WordBool; dispid 1610743827;
    function hasLaser: WordBool; dispid 1610743828;
    function reconnect: WordBool; dispid 1610743829;
    function setCCDTriggerSource(source: Word): WordBool; dispid 1610743830;
    function setExternalTriggerOutput(value: EXTERNAL_TRIGGER_OUTPUT): WordBool; dispid 1610743831;
    function setTriggerDelay(value: LongWord): WordBool; dispid 1610743832;
    function setLaserRampingEnable(flag: WordBool): WordBool; dispid 1610743833;
    function setHorizontalBinning(mode: HORIZ_BINNING): WordBool; dispid 1610743834;
    function setCCDTemperatureSetpointDegC(degC: Single): WordBool; dispid 1610743835;
    function setDFUMode(flag: WordBool): WordBool; dispid 1610743836;
    function setHighGainModeEnabled(flag: WordBool): WordBool; dispid 1610743837;
    function setCCDGain(gain: Single): WordBool; dispid 1610743838;
    function setCCDTemperatureEnable(flag: WordBool): WordBool; dispid 1610743839;
    function setDAC(word: Word): WordBool; dispid 1610743840;
    function setCCDOffset(value: Word): WordBool; dispid 1610743841;
    function setCCDSensingThreshold(value: Word): WordBool; dispid 1610743842;
    function setCCDThresholdSensingEnable(flag: WordBool): WordBool; dispid 1610743843;
    function getIntegrationTimeMS: LongWord; dispid 1610743844;
    function getFPGARev: WideString; dispid 1610743845;
    function getFirmwareRev: WideString; dispid 1610743846;
    function getCCDTriggerSource: CCD_TRIGGER_SOURCE; dispid 1610743847;
    function getExternalTriggerOutput: EXTERNAL_TRIGGER_OUTPUT; dispid 1610743848;
    function getHorizBinning: HORIZ_BINNING; dispid 1610743849;
    function getActualIntegrationTimeUS: LongWord; dispid 1610743850;
    function getLaserRampingEnabled: WordBool; dispid 1610743851;
    function getHighGainModeEnabled: WordBool; dispid 1610743852;
    function getCCDTriggerDelay: LongWord; dispid 1610743853;
    function getCCDTemperatureRaw: Word; dispid 1610743854;
    function getCCDTemperatureDegC: Single; dispid 1610743855;
    function getLaserTemperatureSetpoint: Byte; dispid 1610743856;
    function getActualFrames: Word; dispid 1610743857;
    function getCCDGain: Single; dispid 1610743858;
    function getCCDOffset: Word; dispid 1610743859;
    function getCCDSensingThreshold: Word; dispid 1610743860;
    function getCCDThresholdSensingEnabled: WordBool; dispid 1610743861;
    function getCCDTempEnabled: WordBool; dispid 1610743862;
    function getDAC: Word; dispid 1610743863;
    function getInterlockEnabled: WordBool; dispid 1610743864;
    function getLaserEnabled: WordBool; dispid 1610743865;
    function getLaserModulationEnabled: WordBool; dispid 1610743866;
    function getLaserModulationDuration: Largeuint; dispid 1610743867;
    function getLaserModulationPeriod: Largeuint; dispid 1610743868;
    function getLaserModulationPulseDelay: Largeuint; dispid 1610743869;
    function getLaserModulationPulseWidth: Largeuint; dispid 1610743870;
    function getLineLength: LongWord; dispid 1610743871;
    function getSelectedLaser: Byte; dispid 1610743872;
    function getLaserModulationLinkedToIntegrationTime: WordBool; dispid 1610743873;
    function getOptCFSelect: WordBool; dispid 1610743874;
    function getOptAreaScan: WordBool; dispid 1610743875;
    function getOptActIntTime: WordBool; dispid 1610743876;
    function getOptHorizontalBinning: WordBool; dispid 1610743877;
    function getOptIntTimeRes: FPGA_INTEG_TIME_RES; dispid 1610743878;
    function getOptDataHdrTab: FPGA_DATA_HEADER; dispid 1610743879;
    function getOptLaserType: FPGA_LASER_TYPE; dispid 1610743880;
    function getOptLaserControl: FPGA_LASER_CONTROL; dispid 1610743881;
    function getLaserTemperatureRaw: Word; dispid 1610743882;
    function getLaserTemperatureDegC: Single; dispid 1610743883;
    function getDetectorSetpointRaw: Word; dispid 1610743884;
    procedure setContinuousCCDEnable(flag: WordBool); dispid 1610743885;
    function getContinuousCCDEnable: WordBool; dispid 1610743886;
    procedure setContinuousCCDFrames(n: Byte); dispid 1610743887;
    function getContinuousCCDFrames: Byte; dispid 1610743888;
    function setLaserPowerPercentage(perc: Single): WordBool; dispid 1610743889;
    function setLaserModulationDurationMicrosec(us: Largeuint): WordBool; dispid 1610743890;
    function setLaserModulationPulseWidth(value: Largeuint): WordBool; dispid 1610743891;
    function setLaserModulationPeriod(value: Largeuint): WordBool; dispid 1610743892;
    function setLaserModulationPulseDelay(value: Largeuint): WordBool; dispid 1610743893;
    function setLaserTemperatureSetpoint(value: Byte): WordBool; dispid 1610743894;
    function setLaserModulationEnable(flag: WordBool): WordBool; dispid 1610743895;
    function setSelectedLaser(id: Byte): WordBool; dispid 1610743896;
    function linkLaserModToIntegrationTime(flag: WordBool): WordBool; dispid 1610743897;
    function setLaserEnable(flag: WordBool): WordBool; dispid 1610743898;
    function getSpectrum: {NOT_OLEAUTO(PSafeArray)}OleVariant; dispid 1610743899;
    function blockUntilDataReady: WordBool; dispid 1610743900;
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
// Interface: _DriverVBAWrapper
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {24EAD020-BD84-367D-A2E7-731BD5692062}
// *********************************************************************//
  _DriverVBAWrapper = interface(IDispatch)
    ['{24EAD020-BD84-367D-A2E7-731BD5692062}']
  end;

// *********************************************************************//
// DispIntf:  _DriverVBAWrapperDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {24EAD020-BD84-367D-A2E7-731BD5692062}
// *********************************************************************//
  _DriverVBAWrapperDisp = dispinterface
    ['{24EAD020-BD84-367D-A2E7-731BD5692062}']
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
// OLE Server Proxy class declaration
// Server Object    : TFeatureIdentification
// Help String      : 
// Default Interface: IFeatureIdentification
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TFeatureIdentification = class(TOleServer)
  private
    FIntf: IFeatureIdentification;
    function GetDefaultInterface: IFeatureIdentification;
  protected
    procedure InitServerData; override;
    function Get_boardType: BOARD_TYPES;
    function Get_firmwarePartNum: WideString;
    function Get_firmwareDesc: WideString;
    function Get_isSupported: WordBool;
    function Get_defaultPixels: LongWord;
    function Get_spectraBlockSize: LongWord;
    function Get_usbDelayMS: LongWord;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IFeatureIdentification);
    procedure Disconnect; override;
    property DefaultInterface: IFeatureIdentification read GetDefaultInterface;
    property boardType: BOARD_TYPES read Get_boardType;
    property firmwarePartNum: WideString read Get_firmwarePartNum;
    property firmwareDesc: WideString read Get_firmwareDesc;
    property isSupported: WordBool read Get_isSupported;
    property defaultPixels: LongWord read Get_defaultPixels;
    property spectraBlockSize: LongWord read Get_spectraBlockSize;
    property usbDelayMS: LongWord read Get_usbDelayMS;
  published
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
// OLE Server Proxy class declaration
// Server Object    : TFPGAOptions
// Help String      : 
// Default Interface: IFPGAOptions
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TFPGAOptions = class(TOleServer)
  private
    FIntf: IFPGAOptions;
    function GetDefaultInterface: IFPGAOptions;
  protected
    procedure InitServerData; override;
    function Get_integrationTimeResolution: FPGA_INTEG_TIME_RES;
    function Get_dataHeader: FPGA_DATA_HEADER;
    function Get_hasCFSelect: WordBool;
    function Get_laserType: FPGA_LASER_TYPE;
    function Get_laserControl: FPGA_LASER_CONTROL;
    function Get_hasAreaScan: WordBool;
    function Get_hasActualIntegTime: WordBool;
    function Get_hasHorizBinning: WordBool;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IFPGAOptions);
    procedure Disconnect; override;
    function parseResolution(value: Integer): FPGA_INTEG_TIME_RES;
    function parseDataHeader(value: Integer): FPGA_DATA_HEADER;
    function parseLaserType(value: Integer): FPGA_LASER_TYPE;
    function parseLaserControl(value: Integer): FPGA_LASER_CONTROL;
    property DefaultInterface: IFPGAOptions read GetDefaultInterface;
    property integrationTimeResolution: FPGA_INTEG_TIME_RES read Get_integrationTimeResolution;
    property dataHeader: FPGA_DATA_HEADER read Get_dataHeader;
    property hasCFSelect: WordBool read Get_hasCFSelect;
    property laserType: FPGA_LASER_TYPE read Get_laserType;
    property laserControl: FPGA_LASER_CONTROL read Get_laserControl;
    property hasAreaScan: WordBool read Get_hasAreaScan;
    property hasActualIntegTime: WordBool read Get_hasActualIntegTime;
    property hasHorizBinning: WordBool read Get_hasHorizBinning;
  published
  end;

// *********************************************************************//
// The Class CoModelConfig provides a Create and CreateRemote method to          
// create instances of the default interface IModelConfig exposed by              
// the CoClass ModelConfig. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoModelConfig = class
    class function Create: IModelConfig;
    class function CreateRemote(const MachineName: string): IModelConfig;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TModelConfig
// Help String      : 
// Default Interface: IModelConfig
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TModelConfig = class(TOleServer)
  private
    FIntf: IModelConfig;
    function GetDefaultInterface: IModelConfig;
  protected
    procedure InitServerData; override;
    function Get_model: WideString;
    function Get_serialNumber: WideString;
    function Get_baudRate: Integer;
    function Get_hasCooling: WordBool;
    function Get_hasBattery: WordBool;
    function Get_hasLaser: WordBool;
    function Get_excitationNM: Smallint;
    function Get_slitSizeUM: Smallint;
    function Get_wavecalCoeffs: PSafeArray;
    procedure Set_wavecalCoeffs(pRetVal: PSafeArray);
    function Get_degCToDACCoeffs: PSafeArray;
    function Get_detectorTempMin: Smallint;
    function Get_detectorTempMax: Smallint;
    function Get_adcToDegCCoeffs: PSafeArray;
    function Get_thermistorResistanceAt298K: Smallint;
    function Get_thermistorBeta: Smallint;
    function Get_calibrationDate: WideString;
    procedure Set_calibrationDate(const pRetVal: WideString);
    function Get_calibrationBy: WideString;
    procedure Set_calibrationBy(const pRetVal: WideString);
    function Get_detectorName: WideString;
    function Get_activePixelsHoriz: Smallint;
    function Get_activePixelsVert: Smallint;
    function Get_minIntegrationTimeMS: Word;
    function Get_maxIntegrationTimeMS: Word;
    function Get_actualHoriz: Smallint;
    function Get_ROIHorizStart: Smallint;
    procedure Set_ROIHorizStart(pRetVal: Smallint);
    function Get_ROIHorizEnd: Smallint;
    procedure Set_ROIHorizEnd(pRetVal: Smallint);
    function Get_ROIVertRegionStart: PSafeArray;
    function Get_ROIVertRegionEnd: PSafeArray;
    function Get_linearityCoeffs: PSafeArray;
    procedure Set_linearityCoeffs(pRetVal: PSafeArray);
    function Get_userData: PSafeArray;
    function Get_userText: WideString;
    procedure Set_userText(const pRetVal: WideString);
    function Get_badPixels: PSafeArray;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IModelConfig);
    procedure Disconnect; override;
    function write: WordBool;
    property DefaultInterface: IModelConfig read GetDefaultInterface;
    property model: WideString read Get_model;
    property serialNumber: WideString read Get_serialNumber;
    property baudRate: Integer read Get_baudRate;
    property hasCooling: WordBool read Get_hasCooling;
    property hasBattery: WordBool read Get_hasBattery;
    property hasLaser: WordBool read Get_hasLaser;
    property excitationNM: Smallint read Get_excitationNM;
    property slitSizeUM: Smallint read Get_slitSizeUM;
    property degCToDACCoeffs: PSafeArray read Get_degCToDACCoeffs;
    property detectorTempMin: Smallint read Get_detectorTempMin;
    property detectorTempMax: Smallint read Get_detectorTempMax;
    property adcToDegCCoeffs: PSafeArray read Get_adcToDegCCoeffs;
    property thermistorResistanceAt298K: Smallint read Get_thermistorResistanceAt298K;
    property thermistorBeta: Smallint read Get_thermistorBeta;
    property detectorName: WideString read Get_detectorName;
    property activePixelsHoriz: Smallint read Get_activePixelsHoriz;
    property activePixelsVert: Smallint read Get_activePixelsVert;
    property minIntegrationTimeMS: Word read Get_minIntegrationTimeMS;
    property maxIntegrationTimeMS: Word read Get_maxIntegrationTimeMS;
    property actualHoriz: Smallint read Get_actualHoriz;
    property ROIVertRegionStart: PSafeArray read Get_ROIVertRegionStart;
    property ROIVertRegionEnd: PSafeArray read Get_ROIVertRegionEnd;
    property userData: PSafeArray read Get_userData;
    property badPixels: PSafeArray read Get_badPixels;
    property wavecalCoeffs: PSafeArray read Get_wavecalCoeffs write Set_wavecalCoeffs;
    property calibrationDate: WideString read Get_calibrationDate write Set_calibrationDate;
    property calibrationBy: WideString read Get_calibrationBy write Set_calibrationBy;
    property ROIHorizStart: Smallint read Get_ROIHorizStart write Set_ROIHorizStart;
    property ROIHorizEnd: Smallint read Get_ROIHorizEnd write Set_ROIHorizEnd;
    property linearityCoeffs: PSafeArray read Get_linearityCoeffs write Set_linearityCoeffs;
    property userText: WideString read Get_userText write Set_userText;
  published
  end;

// *********************************************************************//
// The Class CoOpcodeHelper provides a Create and CreateRemote method to          
// create instances of the default interface IOpcodeHelper exposed by              
// the CoClass OpcodeHelper. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoOpcodeHelper = class
    class function Create: IOpcodeHelper;
    class function CreateRemote(const MachineName: string): IOpcodeHelper;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TOpcodeHelper
// Help String      : 
// Default Interface: IOpcodeHelper
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TOpcodeHelper = class(TOleServer)
  private
    FIntf: IOpcodeHelper;
    function GetDefaultInterface: IOpcodeHelper;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IOpcodeHelper);
    procedure Disconnect; override;
    property DefaultInterface: IOpcodeHelper read GetDefaultInterface;
  published
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
// OLE Server Proxy class declaration
// Server Object    : TDriver
// Help String      : 
// Default Interface: IDriver
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TDriver = class(TOleServer)
  private
    FIntf: IDriver;
    function GetDefaultInterface: IDriver;
  protected
    procedure InitServerData; override;
    function Get_Logger: ILogger;
    function Get_version: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDriver);
    procedure Disconnect; override;
    function openAllSpectrometers: Integer;
    function getNumberOfSpectrometers: Integer;
    function getSpectrometer(index: Integer): ISpectrometer;
    procedure closeAllSpectrometers;
    property DefaultInterface: IDriver read GetDefaultInterface;
    property Logger: ILogger read Get_Logger;
    property version: WideString read Get_version;
  published
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
// OLE Server Proxy class declaration
// Server Object    : TLogger
// Help String      : 
// Default Interface: ILogger
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TLogger = class(TOleServer)
  private
    FIntf: ILogger;
    function GetDefaultInterface: ILogger;
  protected
    procedure InitServerData; override;
    function Get_level: LogLevel;
    procedure Set_level(pRetVal: LogLevel);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ILogger);
    procedure Disconnect; override;
    procedure setTextBox(const tb: _TextBox);
    procedure setPathname(const path: WideString);
    function debugEnabled: WordBool;
    function getLastError: WideString;
    function hasError: WordBool;
    procedure error(const fmt: WideString; obj: PSafeArray);
    procedure info(const fmt: WideString; obj: PSafeArray);
    procedure debug(const fmt: WideString; obj: PSafeArray);
    procedure save(const pathname: WideString);
    procedure hexdump(buf: PSafeArray; const prefix: WideString);
    property DefaultInterface: ILogger read GetDefaultInterface;
    property level: LogLevel read Get_level write Set_level;
  published
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
// OLE Server Proxy class declaration
// Server Object    : TSpectrometer
// Help String      : 
// Default Interface: ISpectrometer
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TSpectrometer = class(TOleServer)
  private
    FIntf: ISpectrometer;
    function GetDefaultInterface: ISpectrometer;
  protected
    procedure InitServerData; override;
    function Get_pixels: LongWord;
    function Get_wavelengths: PSafeArray;
    function Get_wavenumbers: PSafeArray;
    function Get_model: WideString;
    function Get_serialNumber: WideString;
    function Get_FeatureIdentification: IFeatureIdentification;
    function Get_FPGAOptions: IFPGAOptions;
    function Get_ModelConfig: IModelConfig;
    function Get_laserRampingEnabled: WordBool;
    procedure Set_laserRampingEnabled(pRetVal: WordBool);
    function Get_integrationTimeMS: LongWord;
    procedure Set_integrationTimeMS(pRetVal: LongWord);
    function Get_scanAveraging: LongWord;
    procedure Set_scanAveraging(pRetVal: LongWord);
    function Get_boxcarHalfWidth: LongWord;
    procedure Set_boxcarHalfWidth(pRetVal: LongWord);
    function Get_dark: PSafeArray;
    procedure Set_dark(pRetVal: PSafeArray);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ISpectrometer);
    procedure Disconnect; override;
    procedure close;
    function isARM: WordBool;
    function hasLaser: WordBool;
    function reconnect: WordBool;
    function setCCDTriggerSource(source: Word): WordBool;
    function setExternalTriggerOutput(value: EXTERNAL_TRIGGER_OUTPUT): WordBool;
    function setTriggerDelay(value: LongWord): WordBool;
    function setLaserRampingEnable(flag: WordBool): WordBool;
    function setHorizontalBinning(mode: HORIZ_BINNING): WordBool;
    function setCCDTemperatureSetpointDegC(degC: Single): WordBool;
    function setDFUMode(flag: WordBool): WordBool;
    function setHighGainModeEnabled(flag: WordBool): WordBool;
    function setCCDGain(gain: Single): WordBool;
    function setCCDTemperatureEnable(flag: WordBool): WordBool;
    function setDAC(word: Word): WordBool;
    function setCCDOffset(value: Word): WordBool;
    function setCCDSensingThreshold(value: Word): WordBool;
    function setCCDThresholdSensingEnable(flag: WordBool): WordBool;
    function getIntegrationTimeMS: LongWord;
    function getFPGARev: WideString;
    function getFirmwareRev: WideString;
    function getCCDTriggerSource: CCD_TRIGGER_SOURCE;
    function getExternalTriggerOutput: EXTERNAL_TRIGGER_OUTPUT;
    function getHorizBinning: HORIZ_BINNING;
    function getActualIntegrationTimeUS: LongWord;
    function getLaserRampingEnabled: WordBool;
    function getHighGainModeEnabled: WordBool;
    function getCCDTriggerDelay: LongWord;
    function getCCDTemperatureRaw: Word;
    function getCCDTemperatureDegC: Single;
    function getLaserTemperatureSetpoint: Byte;
    function getActualFrames: Word;
    function getCCDGain: Single;
    function getCCDOffset: Word;
    function getCCDSensingThreshold: Word;
    function getCCDThresholdSensingEnabled: WordBool;
    function getCCDTempEnabled: WordBool;
    function getDAC: Word;
    function getInterlockEnabled: WordBool;
    function getLaserEnabled: WordBool;
    function getLaserModulationEnabled: WordBool;
    function getLaserModulationDuration: Largeuint;
    function getLaserModulationPeriod: Largeuint;
    function getLaserModulationPulseDelay: Largeuint;
    function getLaserModulationPulseWidth: Largeuint;
    function getLineLength: LongWord;
    function getSelectedLaser: Byte;
    function getLaserModulationLinkedToIntegrationTime: WordBool;
    function getOptCFSelect: WordBool;
    function getOptAreaScan: WordBool;
    function getOptActIntTime: WordBool;
    function getOptHorizontalBinning: WordBool;
    function getOptIntTimeRes: FPGA_INTEG_TIME_RES;
    function getOptDataHdrTab: FPGA_DATA_HEADER;
    function getOptLaserType: FPGA_LASER_TYPE;
    function getOptLaserControl: FPGA_LASER_CONTROL;
    function getLaserTemperatureRaw: Word;
    function getLaserTemperatureDegC: Single;
    function getDetectorSetpointRaw: Word;
    procedure setContinuousCCDEnable(flag: WordBool);
    function getContinuousCCDEnable: WordBool;
    procedure setContinuousCCDFrames(n: Byte);
    function getContinuousCCDFrames: Byte;
    function setLaserPowerPercentage(perc: Single): WordBool;
    function setLaserModulationDurationMicrosec(us: Largeuint): WordBool;
    function setLaserModulationPulseWidth(value: Largeuint): WordBool;
    function setLaserModulationPeriod(value: Largeuint): WordBool;
    function setLaserModulationPulseDelay(value: Largeuint): WordBool;
    function setLaserTemperatureSetpoint(value: Byte): WordBool;
    function setLaserModulationEnable(flag: WordBool): WordBool;
    function setSelectedLaser(id: Byte): WordBool;
    function linkLaserModToIntegrationTime(flag: WordBool): WordBool;
    function setLaserEnable(flag: WordBool): WordBool;
    function getSpectrum: PSafeArray;
    function blockUntilDataReady: WordBool;
    property DefaultInterface: ISpectrometer read GetDefaultInterface;
    property pixels: LongWord read Get_pixels;
    property wavelengths: PSafeArray read Get_wavelengths;
    property wavenumbers: PSafeArray read Get_wavenumbers;
    property model: WideString read Get_model;
    property serialNumber: WideString read Get_serialNumber;
    property FeatureIdentification: IFeatureIdentification read Get_FeatureIdentification;
    property FPGAOptions: IFPGAOptions read Get_FPGAOptions;
    property ModelConfig: IModelConfig read Get_ModelConfig;
    property laserRampingEnabled: WordBool read Get_laserRampingEnabled write Set_laserRampingEnabled;
    property integrationTimeMS: LongWord read Get_integrationTimeMS write Set_integrationTimeMS;
    property scanAveraging: LongWord read Get_scanAveraging write Set_scanAveraging;
    property boxcarHalfWidth: LongWord read Get_boxcarHalfWidth write Set_boxcarHalfWidth;
    property dark: PSafeArray read Get_dark write Set_dark;
  published
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
// OLE Server Proxy class declaration
// Server Object    : TAcquisitionStatus
// Help String      : 
// Default Interface: _AcquisitionStatus
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (0)
// *********************************************************************//
  TAcquisitionStatus = class(TOleServer)
  private
    FIntf: _AcquisitionStatus;
    function GetDefaultInterface: _AcquisitionStatus;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _AcquisitionStatus);
    procedure Disconnect; override;
    property DefaultInterface: _AcquisitionStatus read GetDefaultInterface;
  published
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
// OLE Server Proxy class declaration
// Server Object    : TParseData
// Help String      : 
// Default Interface: _ParseData
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TParseData = class(TOleServer)
  private
    FIntf: _ParseData;
    function GetDefaultInterface: _ParseData;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _ParseData);
    procedure Disconnect; override;
    property DefaultInterface: _ParseData read GetDefaultInterface;
  published
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
// OLE Server Proxy class declaration
// Server Object    : TFunkyFloat
// Help String      : 
// Default Interface: _FunkyFloat
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TFunkyFloat = class(TOleServer)
  private
    FIntf: _FunkyFloat;
    function GetDefaultInterface: _FunkyFloat;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _FunkyFloat);
    procedure Disconnect; override;
    property DefaultInterface: _FunkyFloat read GetDefaultInterface;
  published
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


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TUtil
// Help String      : 
// Default Interface: _Util
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TUtil = class(TOleServer)
  private
    FIntf: _Util;
    function GetDefaultInterface: _Util;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Util);
    procedure Disconnect; override;
    property DefaultInterface: _Util read GetDefaultInterface;
  published
  end;

// *********************************************************************//
// The Class CoDriverVBAWrapper provides a Create and CreateRemote method to          
// create instances of the default interface _DriverVBAWrapper exposed by              
// the CoClass DriverVBAWrapper. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDriverVBAWrapper = class
    class function Create: _DriverVBAWrapper;
    class function CreateRemote(const MachineName: string): _DriverVBAWrapper;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDriverVBAWrapper
// Help String      : 
// Default Interface: _DriverVBAWrapper
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
  TDriverVBAWrapper = class(TOleServer)
  private
    FIntf: IDriverVBAWrapper;
    function GetDefaultInterface: IDriverVBAWrapper;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDriverVBAWrapper);
    procedure Disconnect; override;
    function Get_instance: IDriver;
    function getSingleton: IDriver;
    property DefaultInterface: IDriverVBAWrapper read GetDefaultInterface;
    property instance: IDriver read Get_instance;
  published
  end;

procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

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

procedure TFeatureIdentification.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{64D0A563-D2E6-4267-A496-A82C0F2D75DB}';
    IntfIID:   '{4CCF3543-73EF-49D5-8234-FC2FDF647127}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TFeatureIdentification.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IFeatureIdentification;
  end;
end;

procedure TFeatureIdentification.ConnectTo(svrIntf: IFeatureIdentification);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TFeatureIdentification.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TFeatureIdentification.GetDefaultInterface: IFeatureIdentification;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TFeatureIdentification.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TFeatureIdentification.Destroy;
begin
  inherited Destroy;
end;

function TFeatureIdentification.Get_boardType: BOARD_TYPES;
begin
  Result := DefaultInterface.boardType;
end;

function TFeatureIdentification.Get_firmwarePartNum: WideString;
begin
  Result := DefaultInterface.firmwarePartNum;
end;

function TFeatureIdentification.Get_firmwareDesc: WideString;
begin
  Result := DefaultInterface.firmwareDesc;
end;

function TFeatureIdentification.Get_isSupported: WordBool;
begin
  Result := DefaultInterface.isSupported;
end;

function TFeatureIdentification.Get_defaultPixels: LongWord;
begin
  Result := DefaultInterface.defaultPixels;
end;

function TFeatureIdentification.Get_spectraBlockSize: LongWord;
begin
  Result := DefaultInterface.spectraBlockSize;
end;

function TFeatureIdentification.Get_usbDelayMS: LongWord;
begin
  Result := DefaultInterface.usbDelayMS;
end;

class function CoFPGAOptions.Create: IFPGAOptions;
begin
  Result := CreateComObject(CLASS_FPGAOptions) as IFPGAOptions;
end;

class function CoFPGAOptions.CreateRemote(const MachineName: string): IFPGAOptions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FPGAOptions) as IFPGAOptions;
end;

procedure TFPGAOptions.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{9ADF1212-249E-4C73-8FE1-E5A22C7EE3AA}';
    IntfIID:   '{CCF6BA13-ECC7-456C-AAFC-ACB8D5E58BDE}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TFPGAOptions.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IFPGAOptions;
  end;
end;

procedure TFPGAOptions.ConnectTo(svrIntf: IFPGAOptions);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TFPGAOptions.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TFPGAOptions.GetDefaultInterface: IFPGAOptions;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TFPGAOptions.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TFPGAOptions.Destroy;
begin
  inherited Destroy;
end;

function TFPGAOptions.Get_integrationTimeResolution: FPGA_INTEG_TIME_RES;
begin
  Result := DefaultInterface.integrationTimeResolution;
end;

function TFPGAOptions.Get_dataHeader: FPGA_DATA_HEADER;
begin
  Result := DefaultInterface.dataHeader;
end;

function TFPGAOptions.Get_hasCFSelect: WordBool;
begin
  Result := DefaultInterface.hasCFSelect;
end;

function TFPGAOptions.Get_laserType: FPGA_LASER_TYPE;
begin
  Result := DefaultInterface.laserType;
end;

function TFPGAOptions.Get_laserControl: FPGA_LASER_CONTROL;
begin
  Result := DefaultInterface.laserControl;
end;

function TFPGAOptions.Get_hasAreaScan: WordBool;
begin
  Result := DefaultInterface.hasAreaScan;
end;

function TFPGAOptions.Get_hasActualIntegTime: WordBool;
begin
  Result := DefaultInterface.hasActualIntegTime;
end;

function TFPGAOptions.Get_hasHorizBinning: WordBool;
begin
  Result := DefaultInterface.hasHorizBinning;
end;

function TFPGAOptions.parseResolution(value: Integer): FPGA_INTEG_TIME_RES;
begin
  Result := DefaultInterface.parseResolution(value);
end;

function TFPGAOptions.parseDataHeader(value: Integer): FPGA_DATA_HEADER;
begin
  Result := DefaultInterface.parseDataHeader(value);
end;

function TFPGAOptions.parseLaserType(value: Integer): FPGA_LASER_TYPE;
begin
  Result := DefaultInterface.parseLaserType(value);
end;

function TFPGAOptions.parseLaserControl(value: Integer): FPGA_LASER_CONTROL;
begin
  Result := DefaultInterface.parseLaserControl(value);
end;

class function CoModelConfig.Create: IModelConfig;
begin
  Result := CreateComObject(CLASS_ModelConfig) as IModelConfig;
end;

class function CoModelConfig.CreateRemote(const MachineName: string): IModelConfig;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ModelConfig) as IModelConfig;
end;

procedure TModelConfig.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{A224D5A7-A0E0-4AAC-8489-4BB0CED3171B}';
    IntfIID:   '{D6BC706B-4B50-4CFD-AFFC-6A01F56B92B4}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TModelConfig.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IModelConfig;
  end;
end;

procedure TModelConfig.ConnectTo(svrIntf: IModelConfig);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TModelConfig.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TModelConfig.GetDefaultInterface: IModelConfig;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TModelConfig.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TModelConfig.Destroy;
begin
  inherited Destroy;
end;

function TModelConfig.Get_model: WideString;
begin
  Result := DefaultInterface.model;
end;

function TModelConfig.Get_serialNumber: WideString;
begin
  Result := DefaultInterface.serialNumber;
end;

function TModelConfig.Get_baudRate: Integer;
begin
  Result := DefaultInterface.baudRate;
end;

function TModelConfig.Get_hasCooling: WordBool;
begin
  Result := DefaultInterface.hasCooling;
end;

function TModelConfig.Get_hasBattery: WordBool;
begin
  Result := DefaultInterface.hasBattery;
end;

function TModelConfig.Get_hasLaser: WordBool;
begin
  Result := DefaultInterface.hasLaser;
end;

function TModelConfig.Get_excitationNM: Smallint;
begin
  Result := DefaultInterface.excitationNM;
end;

function TModelConfig.Get_slitSizeUM: Smallint;
begin
  Result := DefaultInterface.slitSizeUM;
end;

function TModelConfig.Get_wavecalCoeffs: PSafeArray;
begin
  Result := DefaultInterface.wavecalCoeffs;
end;

procedure TModelConfig.Set_wavecalCoeffs(pRetVal: PSafeArray);
begin
  DefaultInterface.wavecalCoeffs := pRetVal;
end;

function TModelConfig.Get_degCToDACCoeffs: PSafeArray;
begin
  Result := DefaultInterface.degCToDACCoeffs;
end;

function TModelConfig.Get_detectorTempMin: Smallint;
begin
  Result := DefaultInterface.detectorTempMin;
end;

function TModelConfig.Get_detectorTempMax: Smallint;
begin
  Result := DefaultInterface.detectorTempMax;
end;

function TModelConfig.Get_adcToDegCCoeffs: PSafeArray;
begin
  Result := DefaultInterface.adcToDegCCoeffs;
end;

function TModelConfig.Get_thermistorResistanceAt298K: Smallint;
begin
  Result := DefaultInterface.thermistorResistanceAt298K;
end;

function TModelConfig.Get_thermistorBeta: Smallint;
begin
  Result := DefaultInterface.thermistorBeta;
end;

function TModelConfig.Get_calibrationDate: WideString;
begin
  Result := DefaultInterface.calibrationDate;
end;

procedure TModelConfig.Set_calibrationDate(const pRetVal: WideString);
begin
  DefaultInterface.calibrationDate := pRetVal;
end;

function TModelConfig.Get_calibrationBy: WideString;
begin
  Result := DefaultInterface.calibrationBy;
end;

procedure TModelConfig.Set_calibrationBy(const pRetVal: WideString);
begin
  DefaultInterface.calibrationBy := pRetVal;
end;

function TModelConfig.Get_detectorName: WideString;
begin
  Result := DefaultInterface.detectorName;
end;

function TModelConfig.Get_activePixelsHoriz: Smallint;
begin
  Result := DefaultInterface.activePixelsHoriz;
end;

function TModelConfig.Get_activePixelsVert: Smallint;
begin
  Result := DefaultInterface.activePixelsVert;
end;

function TModelConfig.Get_minIntegrationTimeMS: Word;
begin
  Result := DefaultInterface.minIntegrationTimeMS;
end;

function TModelConfig.Get_maxIntegrationTimeMS: Word;
begin
  Result := DefaultInterface.maxIntegrationTimeMS;
end;

function TModelConfig.Get_actualHoriz: Smallint;
begin
  Result := DefaultInterface.actualHoriz;
end;

function TModelConfig.Get_ROIHorizStart: Smallint;
begin
  Result := DefaultInterface.ROIHorizStart;
end;

procedure TModelConfig.Set_ROIHorizStart(pRetVal: Smallint);
begin
  DefaultInterface.ROIHorizStart := pRetVal;
end;

function TModelConfig.Get_ROIHorizEnd: Smallint;
begin
  Result := DefaultInterface.ROIHorizEnd;
end;

procedure TModelConfig.Set_ROIHorizEnd(pRetVal: Smallint);
begin
  DefaultInterface.ROIHorizEnd := pRetVal;
end;

function TModelConfig.Get_ROIVertRegionStart: PSafeArray;
begin
  Result := DefaultInterface.ROIVertRegionStart;
end;

function TModelConfig.Get_ROIVertRegionEnd: PSafeArray;
begin
  Result := DefaultInterface.ROIVertRegionEnd;
end;

function TModelConfig.Get_linearityCoeffs: PSafeArray;
begin
  Result := DefaultInterface.linearityCoeffs;
end;

procedure TModelConfig.Set_linearityCoeffs(pRetVal: PSafeArray);
begin
  DefaultInterface.linearityCoeffs := pRetVal;
end;

function TModelConfig.Get_userData: PSafeArray;
begin
  Result := DefaultInterface.userData;
end;

function TModelConfig.Get_userText: WideString;
begin
  Result := DefaultInterface.userText;
end;

procedure TModelConfig.Set_userText(const pRetVal: WideString);
begin
  DefaultInterface.userText := pRetVal;
end;

function TModelConfig.Get_badPixels: PSafeArray;
begin
  Result := DefaultInterface.badPixels;
end;

function TModelConfig.write: WordBool;
begin
  Result := DefaultInterface.write;
end;

class function CoOpcodeHelper.Create: IOpcodeHelper;
begin
  Result := CreateComObject(CLASS_OpcodeHelper) as IOpcodeHelper;
end;

class function CoOpcodeHelper.CreateRemote(const MachineName: string): IOpcodeHelper;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_OpcodeHelper) as IOpcodeHelper;
end;

procedure TOpcodeHelper.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{1CA5AF48-05E6-4A91-96D2-0DF78CB9DCF7}';
    IntfIID:   '{DC076FE7-2203-4B6F-867C-287E982D007A}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TOpcodeHelper.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IOpcodeHelper;
  end;
end;

procedure TOpcodeHelper.ConnectTo(svrIntf: IOpcodeHelper);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TOpcodeHelper.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TOpcodeHelper.GetDefaultInterface: IOpcodeHelper;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TOpcodeHelper.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TOpcodeHelper.Destroy;
begin
  inherited Destroy;
end;

class function CoDriver.Create: IDriver;
begin
  Result := CreateComObject(CLASS_Driver) as IDriver;
end;

class function CoDriver.CreateRemote(const MachineName: string): IDriver;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Driver) as IDriver;
end;

procedure TDriver.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{E71326C8-C2BC-404F-81E4-394D95541A24}';
    IntfIID:   '{860AEAC3-6016-47B0-ABB9-88F0194601EB}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDriver.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDriver;
  end;
end;

procedure TDriver.ConnectTo(svrIntf: IDriver);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDriver.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDriver.GetDefaultInterface: IDriver;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TDriver.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TDriver.Destroy;
begin
  inherited Destroy;
end;

function TDriver.Get_Logger: ILogger;
begin
  Result := DefaultInterface.Logger;
end;

function TDriver.Get_version: WideString;
begin
  Result := DefaultInterface.version;
end;

function TDriver.openAllSpectrometers: Integer;
begin
  Result := DefaultInterface.openAllSpectrometers;
end;

function TDriver.getNumberOfSpectrometers: Integer;
begin
  Result := DefaultInterface.getNumberOfSpectrometers;
end;

function TDriver.getSpectrometer(index: Integer): ISpectrometer;
begin
  Result := DefaultInterface.getSpectrometer(index);
end;

procedure TDriver.closeAllSpectrometers;
begin
  DefaultInterface.closeAllSpectrometers;
end;

class function CoLogger.Create: ILogger;
begin
  Result := CreateComObject(CLASS_Logger) as ILogger;
end;

class function CoLogger.CreateRemote(const MachineName: string): ILogger;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Logger) as ILogger;
end;

procedure TLogger.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{5FED8E72-15B1-4ACA-B730-3B3006364D23}';
    IntfIID:   '{7AF402E8-3051-43CE-AF24-29F44513A266}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TLogger.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ILogger;
  end;
end;

procedure TLogger.ConnectTo(svrIntf: ILogger);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TLogger.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TLogger.GetDefaultInterface: ILogger;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TLogger.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TLogger.Destroy;
begin
  inherited Destroy;
end;

function TLogger.Get_level: LogLevel;
begin
  Result := DefaultInterface.level;
end;

procedure TLogger.Set_level(pRetVal: LogLevel);
begin
  DefaultInterface.level := pRetVal;
end;

procedure TLogger.setTextBox(const tb: _TextBox);
begin
  DefaultInterface.setTextBox(tb);
end;

procedure TLogger.setPathname(const path: WideString);
begin
  DefaultInterface.setPathname(path);
end;

function TLogger.debugEnabled: WordBool;
begin
  Result := DefaultInterface.debugEnabled;
end;

function TLogger.getLastError: WideString;
begin
  Result := DefaultInterface.getLastError;
end;

function TLogger.hasError: WordBool;
begin
  Result := DefaultInterface.hasError;
end;

procedure TLogger.error(const fmt: WideString; obj: PSafeArray);
begin
  DefaultInterface.error(fmt, obj);
end;

procedure TLogger.info(const fmt: WideString; obj: PSafeArray);
begin
  DefaultInterface.info(fmt, obj);
end;

procedure TLogger.debug(const fmt: WideString; obj: PSafeArray);
begin
  DefaultInterface.debug(fmt, obj);
end;

procedure TLogger.save(const pathname: WideString);
begin
  DefaultInterface.save(pathname);
end;

procedure TLogger.hexdump(buf: PSafeArray; const prefix: WideString);
begin
  DefaultInterface.hexdump(buf, prefix);
end;

class function CoSpectrometer.Create: ISpectrometer;
begin
  Result := CreateComObject(CLASS_Spectrometer) as ISpectrometer;
end;

class function CoSpectrometer.CreateRemote(const MachineName: string): ISpectrometer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Spectrometer) as ISpectrometer;
end;

procedure TSpectrometer.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{06DF0AB6-741E-43D8-92EF-E14CB74070D7}';
    IntfIID:   '{7F04C891-E0AC-4F47-812E-C757CF2918B7}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSpectrometer.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ISpectrometer;
  end;
end;

procedure TSpectrometer.ConnectTo(svrIntf: ISpectrometer);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSpectrometer.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSpectrometer.GetDefaultInterface: ISpectrometer;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TSpectrometer.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TSpectrometer.Destroy;
begin
  inherited Destroy;
end;

function TSpectrometer.Get_pixels: LongWord;
begin
  Result := DefaultInterface.pixels;
end;

function TSpectrometer.Get_wavelengths: PSafeArray;
begin
  Result := DefaultInterface.wavelengths;
end;

function TSpectrometer.Get_wavenumbers: PSafeArray;
begin
  Result := DefaultInterface.wavenumbers;
end;

function TSpectrometer.Get_model: WideString;
begin
  Result := DefaultInterface.model;
end;

function TSpectrometer.Get_serialNumber: WideString;
begin
  Result := DefaultInterface.serialNumber;
end;

function TSpectrometer.Get_FeatureIdentification: IFeatureIdentification;
begin
  Result := DefaultInterface.FeatureIdentification;
end;

function TSpectrometer.Get_FPGAOptions: IFPGAOptions;
begin
  Result := DefaultInterface.FPGAOptions;
end;

function TSpectrometer.Get_ModelConfig: IModelConfig;
begin
  Result := DefaultInterface.ModelConfig;
end;

function TSpectrometer.Get_laserRampingEnabled: WordBool;
begin
  Result := DefaultInterface.laserRampingEnabled;
end;

procedure TSpectrometer.Set_laserRampingEnabled(pRetVal: WordBool);
begin
  DefaultInterface.laserRampingEnabled := pRetVal;
end;

function TSpectrometer.Get_integrationTimeMS: LongWord;
begin
  Result := DefaultInterface.integrationTimeMS;
end;

procedure TSpectrometer.Set_integrationTimeMS(pRetVal: LongWord);
begin
  DefaultInterface.integrationTimeMS := pRetVal;
end;

function TSpectrometer.Get_scanAveraging: LongWord;
begin
  Result := DefaultInterface.scanAveraging;
end;

procedure TSpectrometer.Set_scanAveraging(pRetVal: LongWord);
begin
  DefaultInterface.scanAveraging := pRetVal;
end;

function TSpectrometer.Get_boxcarHalfWidth: LongWord;
begin
  Result := DefaultInterface.boxcarHalfWidth;
end;

procedure TSpectrometer.Set_boxcarHalfWidth(pRetVal: LongWord);
begin
  DefaultInterface.boxcarHalfWidth := pRetVal;
end;

function TSpectrometer.Get_dark: PSafeArray;
begin
  Result := DefaultInterface.dark;
end;

procedure TSpectrometer.Set_dark(pRetVal: PSafeArray);
begin
  DefaultInterface.dark := pRetVal;
end;

procedure TSpectrometer.close;
begin
  DefaultInterface.close;
end;

function TSpectrometer.isARM: WordBool;
begin
  Result := DefaultInterface.isARM;
end;

function TSpectrometer.hasLaser: WordBool;
begin
  Result := DefaultInterface.hasLaser;
end;

function TSpectrometer.reconnect: WordBool;
begin
  Result := DefaultInterface.reconnect;
end;

function TSpectrometer.setCCDTriggerSource(source: Word): WordBool;
begin
  Result := DefaultInterface.setCCDTriggerSource(source);
end;

function TSpectrometer.setExternalTriggerOutput(value: EXTERNAL_TRIGGER_OUTPUT): WordBool;
begin
  Result := DefaultInterface.setExternalTriggerOutput(value);
end;

function TSpectrometer.setTriggerDelay(value: LongWord): WordBool;
begin
  Result := DefaultInterface.setTriggerDelay(value);
end;

function TSpectrometer.setLaserRampingEnable(flag: WordBool): WordBool;
begin
  Result := DefaultInterface.setLaserRampingEnable(flag);
end;

function TSpectrometer.setHorizontalBinning(mode: HORIZ_BINNING): WordBool;
begin
  Result := DefaultInterface.setHorizontalBinning(mode);
end;

function TSpectrometer.setCCDTemperatureSetpointDegC(degC: Single): WordBool;
begin
  Result := DefaultInterface.setCCDTemperatureSetpointDegC(degC);
end;

function TSpectrometer.setDFUMode(flag: WordBool): WordBool;
begin
  Result := DefaultInterface.setDFUMode(flag);
end;

function TSpectrometer.setHighGainModeEnabled(flag: WordBool): WordBool;
begin
  Result := DefaultInterface.setHighGainModeEnabled(flag);
end;

function TSpectrometer.setCCDGain(gain: Single): WordBool;
begin
  Result := DefaultInterface.setCCDGain(gain);
end;

function TSpectrometer.setCCDTemperatureEnable(flag: WordBool): WordBool;
begin
  Result := DefaultInterface.setCCDTemperatureEnable(flag);
end;

function TSpectrometer.setDAC(word: Word): WordBool;
begin
  Result := DefaultInterface.setDAC(word);
end;

function TSpectrometer.setCCDOffset(value: Word): WordBool;
begin
  Result := DefaultInterface.setCCDOffset(value);
end;

function TSpectrometer.setCCDSensingThreshold(value: Word): WordBool;
begin
  Result := DefaultInterface.setCCDSensingThreshold(value);
end;

function TSpectrometer.setCCDThresholdSensingEnable(flag: WordBool): WordBool;
begin
  Result := DefaultInterface.setCCDThresholdSensingEnable(flag);
end;

function TSpectrometer.getIntegrationTimeMS: LongWord;
begin
  Result := DefaultInterface.getIntegrationTimeMS;
end;

function TSpectrometer.getFPGARev: WideString;
begin
  Result := DefaultInterface.getFPGARev;
end;

function TSpectrometer.getFirmwareRev: WideString;
begin
  Result := DefaultInterface.getFirmwareRev;
end;

function TSpectrometer.getCCDTriggerSource: CCD_TRIGGER_SOURCE;
begin
  Result := DefaultInterface.getCCDTriggerSource;
end;

function TSpectrometer.getExternalTriggerOutput: EXTERNAL_TRIGGER_OUTPUT;
begin
  Result := DefaultInterface.getExternalTriggerOutput;
end;

function TSpectrometer.getHorizBinning: HORIZ_BINNING;
begin
  Result := DefaultInterface.getHorizBinning;
end;

function TSpectrometer.getActualIntegrationTimeUS: LongWord;
begin
  Result := DefaultInterface.getActualIntegrationTimeUS;
end;

function TSpectrometer.getLaserRampingEnabled: WordBool;
begin
  Result := DefaultInterface.getLaserRampingEnabled;
end;

function TSpectrometer.getHighGainModeEnabled: WordBool;
begin
  Result := DefaultInterface.getHighGainModeEnabled;
end;

function TSpectrometer.getCCDTriggerDelay: LongWord;
begin
  Result := DefaultInterface.getCCDTriggerDelay;
end;

function TSpectrometer.getCCDTemperatureRaw: Word;
begin
  Result := DefaultInterface.getCCDTemperatureRaw;
end;

function TSpectrometer.getCCDTemperatureDegC: Single;
begin
  Result := DefaultInterface.getCCDTemperatureDegC;
end;

function TSpectrometer.getLaserTemperatureSetpoint: Byte;
begin
  Result := DefaultInterface.getLaserTemperatureSetpoint;
end;

function TSpectrometer.getActualFrames: Word;
begin
  Result := DefaultInterface.getActualFrames;
end;

function TSpectrometer.getCCDGain: Single;
begin
  Result := DefaultInterface.getCCDGain;
end;

function TSpectrometer.getCCDOffset: Word;
begin
  Result := DefaultInterface.getCCDOffset;
end;

function TSpectrometer.getCCDSensingThreshold: Word;
begin
  Result := DefaultInterface.getCCDSensingThreshold;
end;

function TSpectrometer.getCCDThresholdSensingEnabled: WordBool;
begin
  Result := DefaultInterface.getCCDThresholdSensingEnabled;
end;

function TSpectrometer.getCCDTempEnabled: WordBool;
begin
  Result := DefaultInterface.getCCDTempEnabled;
end;

function TSpectrometer.getDAC: Word;
begin
  Result := DefaultInterface.getDAC;
end;

function TSpectrometer.getInterlockEnabled: WordBool;
begin
  Result := DefaultInterface.getInterlockEnabled;
end;

function TSpectrometer.getLaserEnabled: WordBool;
begin
  Result := DefaultInterface.getLaserEnabled;
end;

function TSpectrometer.getLaserModulationEnabled: WordBool;
begin
  Result := DefaultInterface.getLaserModulationEnabled;
end;

function TSpectrometer.getLaserModulationDuration: Largeuint;
begin
  Result := DefaultInterface.getLaserModulationDuration;
end;

function TSpectrometer.getLaserModulationPeriod: Largeuint;
begin
  Result := DefaultInterface.getLaserModulationPeriod;
end;

function TSpectrometer.getLaserModulationPulseDelay: Largeuint;
begin
  Result := DefaultInterface.getLaserModulationPulseDelay;
end;

function TSpectrometer.getLaserModulationPulseWidth: Largeuint;
begin
  Result := DefaultInterface.getLaserModulationPulseWidth;
end;

function TSpectrometer.getLineLength: LongWord;
begin
  Result := DefaultInterface.getLineLength;
end;

function TSpectrometer.getSelectedLaser: Byte;
begin
  Result := DefaultInterface.getSelectedLaser;
end;

function TSpectrometer.getLaserModulationLinkedToIntegrationTime: WordBool;
begin
  Result := DefaultInterface.getLaserModulationLinkedToIntegrationTime;
end;

function TSpectrometer.getOptCFSelect: WordBool;
begin
  Result := DefaultInterface.getOptCFSelect;
end;

function TSpectrometer.getOptAreaScan: WordBool;
begin
  Result := DefaultInterface.getOptAreaScan;
end;

function TSpectrometer.getOptActIntTime: WordBool;
begin
  Result := DefaultInterface.getOptActIntTime;
end;

function TSpectrometer.getOptHorizontalBinning: WordBool;
begin
  Result := DefaultInterface.getOptHorizontalBinning;
end;

function TSpectrometer.getOptIntTimeRes: FPGA_INTEG_TIME_RES;
begin
  Result := DefaultInterface.getOptIntTimeRes;
end;

function TSpectrometer.getOptDataHdrTab: FPGA_DATA_HEADER;
begin
  Result := DefaultInterface.getOptDataHdrTab;
end;

function TSpectrometer.getOptLaserType: FPGA_LASER_TYPE;
begin
  Result := DefaultInterface.getOptLaserType;
end;

function TSpectrometer.getOptLaserControl: FPGA_LASER_CONTROL;
begin
  Result := DefaultInterface.getOptLaserControl;
end;

function TSpectrometer.getLaserTemperatureRaw: Word;
begin
  Result := DefaultInterface.getLaserTemperatureRaw;
end;

function TSpectrometer.getLaserTemperatureDegC: Single;
begin
  Result := DefaultInterface.getLaserTemperatureDegC;
end;

function TSpectrometer.getDetectorSetpointRaw: Word;
begin
  Result := DefaultInterface.getDetectorSetpointRaw;
end;

procedure TSpectrometer.setContinuousCCDEnable(flag: WordBool);
begin
  DefaultInterface.setContinuousCCDEnable(flag);
end;

function TSpectrometer.getContinuousCCDEnable: WordBool;
begin
  Result := DefaultInterface.getContinuousCCDEnable;
end;

procedure TSpectrometer.setContinuousCCDFrames(n: Byte);
begin
  DefaultInterface.setContinuousCCDFrames(n);
end;

function TSpectrometer.getContinuousCCDFrames: Byte;
begin
  Result := DefaultInterface.getContinuousCCDFrames;
end;

function TSpectrometer.setLaserPowerPercentage(perc: Single): WordBool;
begin
  Result := DefaultInterface.setLaserPowerPercentage(perc);
end;

function TSpectrometer.setLaserModulationDurationMicrosec(us: Largeuint): WordBool;
begin
  Result := DefaultInterface.setLaserModulationDurationMicrosec(us);
end;

function TSpectrometer.setLaserModulationPulseWidth(value: Largeuint): WordBool;
begin
  Result := DefaultInterface.setLaserModulationPulseWidth(value);
end;

function TSpectrometer.setLaserModulationPeriod(value: Largeuint): WordBool;
begin
  Result := DefaultInterface.setLaserModulationPeriod(value);
end;

function TSpectrometer.setLaserModulationPulseDelay(value: Largeuint): WordBool;
begin
  Result := DefaultInterface.setLaserModulationPulseDelay(value);
end;

function TSpectrometer.setLaserTemperatureSetpoint(value: Byte): WordBool;
begin
  Result := DefaultInterface.setLaserTemperatureSetpoint(value);
end;

function TSpectrometer.setLaserModulationEnable(flag: WordBool): WordBool;
begin
  Result := DefaultInterface.setLaserModulationEnable(flag);
end;

function TSpectrometer.setSelectedLaser(id: Byte): WordBool;
begin
  Result := DefaultInterface.setSelectedLaser(id);
end;

function TSpectrometer.linkLaserModToIntegrationTime(flag: WordBool): WordBool;
begin
  Result := DefaultInterface.linkLaserModToIntegrationTime(flag);
end;

function TSpectrometer.setLaserEnable(flag: WordBool): WordBool;
begin
  Result := DefaultInterface.setLaserEnable(flag);
end;

function TSpectrometer.getSpectrum: PSafeArray;
begin
  Result := DefaultInterface.getSpectrum;
end;

function TSpectrometer.blockUntilDataReady: WordBool;
begin
  Result := DefaultInterface.blockUntilDataReady;
end;

class function CoAcquisitionStatus.Create: _AcquisitionStatus;
begin
  Result := CreateComObject(CLASS_AcquisitionStatus) as _AcquisitionStatus;
end;

class function CoAcquisitionStatus.CreateRemote(const MachineName: string): _AcquisitionStatus;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AcquisitionStatus) as _AcquisitionStatus;
end;

procedure TAcquisitionStatus.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{5FCC0C98-E1F4-368D-B9EB-E49D82831E41}';
    IntfIID:   '{72489ACB-B7A4-343B-99F4-33A1FDA394ED}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TAcquisitionStatus.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _AcquisitionStatus;
  end;
end;

procedure TAcquisitionStatus.ConnectTo(svrIntf: _AcquisitionStatus);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TAcquisitionStatus.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TAcquisitionStatus.GetDefaultInterface: _AcquisitionStatus;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TAcquisitionStatus.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TAcquisitionStatus.Destroy;
begin
  inherited Destroy;
end;

class function CoParseData.Create: _ParseData;
begin
  Result := CreateComObject(CLASS_ParseData) as _ParseData;
end;

class function CoParseData.CreateRemote(const MachineName: string): _ParseData;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ParseData) as _ParseData;
end;

procedure TParseData.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D14D708F-E2FA-3B4B-8BAE-CC4945ED52AC}';
    IntfIID:   '{F6B5DFEF-2A1D-30CF-8F11-08623387E532}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TParseData.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _ParseData;
  end;
end;

procedure TParseData.ConnectTo(svrIntf: _ParseData);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TParseData.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TParseData.GetDefaultInterface: _ParseData;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TParseData.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TParseData.Destroy;
begin
  inherited Destroy;
end;

class function CoFunkyFloat.Create: _FunkyFloat;
begin
  Result := CreateComObject(CLASS_FunkyFloat) as _FunkyFloat;
end;

class function CoFunkyFloat.CreateRemote(const MachineName: string): _FunkyFloat;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FunkyFloat) as _FunkyFloat;
end;

procedure TFunkyFloat.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{6681BB3A-9ACB-37B1-804A-C67FE035A307}';
    IntfIID:   '{93BB3FDC-4DE0-3361-9B4D-82D313AF51D0}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TFunkyFloat.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _FunkyFloat;
  end;
end;

procedure TFunkyFloat.ConnectTo(svrIntf: _FunkyFloat);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TFunkyFloat.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TFunkyFloat.GetDefaultInterface: _FunkyFloat;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TFunkyFloat.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TFunkyFloat.Destroy;
begin
  inherited Destroy;
end;

class function CoUtil.Create: _Util;
begin
  Result := CreateComObject(CLASS_Util) as _Util;
end;

class function CoUtil.CreateRemote(const MachineName: string): _Util;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Util) as _Util;
end;

procedure TUtil.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{05B4D0C4-E150-3A5C-BE2D-1EC5CFB7CF1F}';
    IntfIID:   '{C4B1136D-9551-304A-B9BF-EE7FDECC0528}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TUtil.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _Util;
  end;
end;

procedure TUtil.ConnectTo(svrIntf: _Util);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TUtil.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TUtil.GetDefaultInterface: _Util;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

constructor TUtil.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TUtil.Destroy;
begin
  inherited Destroy;
end;

class function CoDriverVBAWrapper.Create: _DriverVBAWrapper;
begin
  Result := CreateComObject(CLASS_DriverVBAWrapper) as _DriverVBAWrapper;
end;

class function CoDriverVBAWrapper.CreateRemote(const MachineName: string): _DriverVBAWrapper;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DriverVBAWrapper) as _DriverVBAWrapper;
end;

procedure TDriverVBAWrapper.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{E253CACE-A702-4A11-B285-D9B9E18886E4}';
    IntfIID:   '{24EAD020-BD84-367D-A2E7-731BD5692062}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDriverVBAWrapper.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDriverVBAWrapper;
  end;
end;

procedure TDriverVBAWrapper.ConnectTo(svrIntf: IDriverVBAWrapper);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDriverVBAWrapper.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDriverVBAWrapper.GetDefaultInterface: IDriverVBAWrapper;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call "Connect" or "ConnectTo" before this operation');
  Result := FIntf;
end;

function TDriverVBAWrapper.getSingleton: IDriver;
begin
  Result := DefaultInterface.getSingleton;
end;

function TDriverVBAWrapper.Get_instance: IDriver;
begin
  Result := DefaultInterface.Get_instance;
end;

constructor TDriverVBAWrapper.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

destructor TDriverVBAWrapper.Destroy;
begin
  inherited Destroy;
end;

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TFeatureIdentification, TFPGAOptions, TModelConfig, TOpcodeHelper,
    TDriver, TLogger, TSpectrometer, TAcquisitionStatus, TParseData,
    TFunkyFloat, TUtil, TDriverVBAWrapper]);
end;

end.
