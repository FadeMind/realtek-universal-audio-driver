@echo off
set signtool="C:\Program Files (x86)\Windows Kits\10\bin\10.0.17134.0\x64\signtool.exe"
set /p Ver=Enter Version: 
set Codec=%~dp0Test\Codec_%Ver%
set CodecCat="%~dp0Test\Codec_%Ver%\hdxrt.cat"
set CodecExtOem=%~dp0Test\CodecExtOem_RTK_%Ver%
set CodecExtOemCat="%~dp0Test\CodecExtOem_RTK_%Ver%\hdxrtext.cat"
set AlexaConfigExtension=%~dp0Test\AlexaConfigExtension_%Ver%
set AlexaConfigExtensionCat="%~dp0Test\AlexaConfigExtension_%Ver%\alexaconfig.cat"
:Start
CLS
ECHO 1.Codec
ECHO 2.CodecExtOem
ECHO 3.AlexaConfigExtension
ECHO.

CHOICE /C 123 /M "Enter your choice:"

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 3 goto AlexaConfigExtension
IF ERRORLEVEL 2 goto CodecExtOem
IF ERRORLEVEL 1 goto Codec

CLS
:Codec
>output.txt (
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXSSTSamsung.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXSSTVAIO.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXSSTWHITE.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXToshiba.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXVAIO.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXWHITE.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\RTAIODAT.DAT"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\RtEventLog.dll"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\RTKVHD64.sys"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\amdacpksl.sys"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXACERAIO.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXACERNB.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXAMD.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXAsrok.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXASUS.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXBPCAS.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXClevo.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXCompal.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXCPC.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXDELLBC2018.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXDELLBCSST2018.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXDELLCSMB2018.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXDELLSSTCSMB2018.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXECS.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXFTS.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXFujitsu.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXGigabyte.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXHAPAcerNB.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXHAPAMD.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXHAPHPNB.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXHAPLenovo.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXHAPSamsung.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXHPAI4.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXHPBNB.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXHPBPC.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXHPBPCAIO.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXHPNB.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXHuawei.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXINTEL.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXInventec.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXLG.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXLV.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXLVSST.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXMI.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXMitac.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXMSI.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXNEC.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXNECSST.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXNexstGo.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXNexstGoSST.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXPagatron.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXPanasonic.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXRazer.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXRT.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXRTBase.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXRTSST.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXRTTest.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXSamsung.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXShuttle.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXSSTACERAIO.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXSSTACERNB.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXSSTAMS.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXSSTAsrock.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXSSTASUS.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXSSTClevo.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXSSTHPAIO.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXSSTHPAIO1.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXSSTHPBNB.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXSSTHPNB.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXSSTHuawei.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXSSTINTEL.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXSSTIntelRVP.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXSSTMI.inf"
%signtool% verify /v /pa /c %CodecCat% "%Codec%\HDXSSTPagatron.inf"
)
pause
GOTO Start
CLS
:CodecExtOem
>output.txt (
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_VAIO_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_WhiteExt_CT_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_WhiteExt_DOLBY_FORTE.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_WhiteExt_DOLBY_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_WhiteExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_WhiteExt_RTK_FORTE.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_WhiteExt_XPERI_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_WovExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_AcerExt_CT_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_AcerExt_DOLBY_INTEL.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_AcerExt_DOLBY_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_AcerExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_AcerExt_RTK_HAP.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_AcerExt_RTK_INTEL.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_AcerExt_WAVES_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_AMDExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_AsrockExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_AsusExt_AVO_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_AsusExt_ICE_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_AsusExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_AsusExt_XPERI_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_ClevoExt_CT_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_ClevoExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_CompalExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_DellBCExt_DSP.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_DellBCExt_WAVES.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_DellBCExt_WAVES_MA8MV5.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_DellBCExt_WAVES_MA77MV47.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_DellCSMBExt_DSP.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_DellCSMBExt_WAVES.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_DellCSMBExt_WAVES_MA8MV5.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_DellCSMBExt_WAVES_MA77MV47.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_DellExt_AVO_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_DellExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_ECSExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_FTSExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_FujitsuExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_FujitsuExt_WAVES.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_GenericExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_GigabyteExt_AVO_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_GigabyteExt_Creative_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_GigabyteExt_DOLBY_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_GigabyteExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_HpExt_HSA.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_HPExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_HpExt_SR_CNXT.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_HpExt_SR_FORTE.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_HpExt_SR_FORTE2.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_HpExt_SR_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_HpExt_SR_RTK_WOV.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_HpExt_SR_RTK2.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_HpExt_XPERI_CNXT.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_HpExt_XPERI_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_HuaweiExt_DOLBY_FORTE.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_IntelExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_IntelExt_RTK_FORTE.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_IntelRVPExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_InventecExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_LenovoExt_DOLBY_FORTE.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_LenovoExt_DOLBY_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_LenovoExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_LenovoExt_RTK_FORTE.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_LenovoNExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_LenovoNExt_YAM_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_LGExt_DOLBY_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_LGExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_MI_DOLBY_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_MitacExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_MsiExt_AVO_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_MsiExt_CT_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_MsiExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_PagatronExt_CT_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_PagatronExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_Panasonic_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_RazerExt_DOLBY_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_RazerExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_SaumsungExt_SAMS_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_SaumsungExt_SAMS_RTK_HAP.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_ShuttleExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_ShuttleExt_XPERI_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_Test_DOLBY_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_ToshibaExt_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_ToshibaExt_XPERI_RTK.inf"
%signtool% verify /v /pa /c %CodecExtOemCat% "%CodecExtOem%\HDX_ToshibaExt_XPERI4_RTK.inf"
)
pause
GOTO Start
:AlexaConfigExtension
>output.txt (
%signtool% verify /v /pa /c %AlexaConfigExtensionCat% "%AlexaConfigExtension%\Alexa_HpExt_SR_FORTE_Config.inf"
%signtool% verify /v /pa /c %AlexaConfigExtensionCat% "%AlexaConfigExtension%\AlexaAcerConfig.inf"
%signtool% verify /v /pa /c %AlexaConfigExtensionCat% "%AlexaConfigExtension%\AlexaAsusConfig.inf"
%signtool% verify /v /pa /c %AlexaConfigExtensionCat% "%AlexaConfigExtension%\AlexaDellConfig.inf"
%signtool% verify /v /pa /c %AlexaConfigExtensionCat% "%AlexaConfigExtension%\AlexaHPConfigRTK.inf"
%signtool% verify /v /pa /c %AlexaConfigExtensionCat% "%AlexaConfigExtension%\AlexaLenovoConfig.inf"
%signtool% verify /v /pa /c %AlexaConfigExtensionCat% "%AlexaConfigExtension%\AlexaMSIConfig.inf"
%signtool% verify /v /pa /c %AlexaConfigExtensionCat% "%AlexaConfigExtension%\AlexaNECConfig.inf"
%signtool% verify /v /pa /c %AlexaConfigExtensionCat% "%AlexaConfigExtension%\AlexaPagatronConfig.inf"
%signtool% verify /v /pa /c %AlexaConfigExtensionCat% "%AlexaConfigExtension%\AlexaWhiteConfig.inf"
%signtool% verify /v /pa /c %AlexaConfigExtensionCat% "%AlexaConfigExtension%\AlexaLenovoNConfig.inf"
)
pause
GOTO Start