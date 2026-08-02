!echo "PROCEED"
!include FileFunc.nsh
!include LogicLib.nsh
SetCompressor /FINAL /SOLID lzma

;--------------------------------
;Version Information section

LoadLanguageFile "${NSISDIR}\Contrib\Language files\English.nlf"

VIProductVersion "21.10.00.00"
VIAddVersionKey /LANG=${LANG_ENGLISH} "FileDescription" "Radeon™ Pro Software Enterprise Edition 21.Q2"
VIAddVersionKey /LANG=${LANG_ENGLISH} "FileVersion" "0.0.0.0"
VIAddVersionKey /LANG=${LANG_ENGLISH} "Comments" "Radeon™ Pro Software Enterprise Edition 21.Q2"
VIAddVersionKey /LANG=${LANG_ENGLISH} "CompanyName" "AMD Inc."
VIAddVersionKey /LANG=${LANG_ENGLISH} "ProductName" "Radeon™ Pro Software Enterprise Edition 21.Q2"
VIAddVersionKey /LANG=${LANG_ENGLISH} "ProductVersion" "20.10 RC10"
VIAddVersionKey /LANG=${LANG_ENGLISH} "LegalTrademarks" "AMD Inc."
VIAddVersionKey /LANG=${LANG_ENGLISH} "LegalCopyright" "AMD Inc."

;--------------------------------

Caption "Radeon™ Pro Software Enterprise Edition 21.Q2"
BrandingText "Radeon™ Pro Software Enterprise Edition 21.Q2"
Icon E:\_Pro-Enterprise-Software\AMD_Black_Arrow_Only.ico

Var ExtractOnly

;--------------------------------

Name "Radeon™ Pro Software Enterprise Edition 21.Q2 (21.10 RC10) for WinSvr2019"

;--------------------------------

OutFile E:\_Pro-Enterprise-Software\21.Q2\WinSvr2019-Radeon-Pro-Software-Enterprise-21.Q2-BasedOn-21.10-RC10.exe

InstallDir C:\AMD\WinSvr2019-Radeon-Pro-Software-Enterprise-21.Q2-BasedOn-21.10-RC10


;--------------------------------

Page directory
Page instfiles

;--------------------------------
Section "2" 

SetOutPath $INSTDIR
   CreateDirectory $INSTDIR
AccessControl::DisableFileInheritance $INSTDIR
AccessControl::ClearOnFile /NOINHERIT $INSTDIR (S-1-5-18) "FullAccess"
AccessControl::GrantOnFile /NOINHERIT $INSTDIR "(S-1-5-32-544)" "FullAccess"
AccessControl::GrantOnFile /NOINHERIT $INSTDIR "(BU)" "ListDirectory + GenericRead + GenericExecute"
${GetOptions} $CMDLINE "-EXTRACTONLY=" $R1
StrCpy "$ExtractOnly" $R1
File /r E:\_Adrenalin-Source\WinSvr2019\*.*

Delete $INSTDIR\makensisw.exe

AccessControl::GrantOnFile "$INSTDIR\setup.exe" "(BU)" "ListDirectory + GenericRead + GenericExecute"
${If} $ExtractOnly != "YES"
Exec '"$INSTDIR\setup.exe"'
${EndIf}

QUIT
SectionEnd