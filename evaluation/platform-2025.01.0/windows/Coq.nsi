; This script is used to build the Windows install program for Coq.

; NSIS Modern User Interface
; Written by Joost Verburg
; Modified by Julien Narboux, Pierre Letouzey, Enrico Tassi and Michael Soegtrop

; The following command line defines are expected:
; VERSION      Coq version, e.g. 8.5-pl2
; ARCH         The target architecture, either x86_64 or i686

; Enable compression after debugging.
; NOTE: NSIS files are limited to 2GB (compressed)
; Turuning off compression for a full installer will result in
; Internal compiler error #12345: error mmapping datablock to 257061.
; For quick tests (say IDE only), compression can be turned off. 
; SetCompress off
; SetCompressor zlib
SetCompressor lzma

!define MY_PRODUCT "Coq-Platform${VERSION}" ;Define your own software name here
!define OUTFILE "Coq-Platform-release-${RELEASE}-version${VERSION}-Windows-${ARCH}.exe"

!include "MUI2.nsh"
!include "FileAssociation.nsh"
!include "winmessages.nsh"
!include "Logiclib.nsh"
;!include "StrRep.nsh"
;!include "ReplaceInFile.nsh"

; Used by OCaml
; Var COQ_SRC_PATH_BS   ; COQ_SRC_PATH with \ instead of /
; Var COQ_SRC_PATH_DBS  ; COQ_SRC_PATH with \\ instead of /
; Var INSTDIR_DBS       ; INSTDIR with \\ instead of "\" 

;--------------------------------
;Configuration

  Name "Coq"

  ;General
  OutFile "${OUTFILE}"

  ;Folder selection page
  InstallDir "C:\${MY_PRODUCT}"

  ;Remember install folder
  InstallDirRegKey HKCU "Software\${MY_PRODUCT}" ""

;--------------------------------
;Extra license pages

!macro MUI_PAGE_LICENSE_EXTRA Licensefile Header Subheader Bottom SelFunc
  !define MUI_PAGE_HEADER_TEXT "${Header}"
  !define MUI_PAGE_HEADER_SUBTEXT "${Subheader}"
  !define MUI_LICENSEPAGE_TEXT_BOTTOM "${Bottom}"
  !define MUI_PAGE_CUSTOMFUNCTION_PRE ${SelFunc}
  !insertmacro MUI_PAGE_LICENSE "${Licensefile}"
!macroend

;--------------------------------
; Check for white spaces
Function .onVerifyInstDir
  StrLen $0 "$INSTDIR"
  StrCpy $1 0
  ${While} $1 < $0
    StrCpy $3 $INSTDIR 1 $1
    StrCmp $3 " " SpacesInPath
    IntOp $1 $1 + 1
  ${EndWhile}
  Goto done
  SpacesInPath:
  Abort
  done:
FunctionEnd

;--------------------------------
;Installer Sections

Section "-CoqWinStuff" Sec_CoqWinStuff
  SetOutPath "$INSTDIR\"

  ${registerExtension} "$INSTDIR\bin\coqide.exe" ".v" "Coq Script File"

  ;Store install folder
  WriteRegStr HKCU "Software\${MY_PRODUCT}" "" $INSTDIR

  ;Create uninstaller
  WriteUninstaller "$INSTDIR\Uninstall.exe"
  WriteRegStr HKEY_LOCAL_MACHINE "Software\Microsoft\Windows\CurrentVersion\Uninstall\${MY_PRODUCT}" \
      "DisplayName" "${MY_PRODUCT}"
  WriteRegStr HKEY_LOCAL_MACHINE "Software\Microsoft\Windows\CurrentVersion\Uninstall\${MY_PRODUCT}" \
      "UninstallString" '"$INSTDIR\Uninstall.exe"'
  WriteRegStr HKEY_LOCAL_MACHINE "Software\Microsoft\Windows\CurrentVersion\Uninstall\${MY_PRODUCT}" \
      "DisplayVersion" "${VERSION}"
  WriteRegStr HKEY_LOCAL_MACHINE "Software\Microsoft\Windows\CurrentVersion\Uninstall\${MY_PRODUCT}" \
      "Publisher" "The Coq Team"
  WriteRegDWORD HKEY_LOCAL_MACHINE "Software\Microsoft\Windows\CurrentVersion\Uninstall\${MY_PRODUCT}" \
      "NoModify" "1"
  WriteRegDWORD HKEY_LOCAL_MACHINE "Software\Microsoft\Windows\CurrentVersion\Uninstall\${MY_PRODUCT}" \
      "NoRepair" "1"
  WriteRegStr HKEY_LOCAL_MACHINE "Software\Microsoft\Windows\CurrentVersion\Uninstall\${MY_PRODUCT}" \
      "URLInfoAbout" "http://coq.inria.fr"

  ; Create start menu entries
  ; SetOutPath is required for the path in the .lnk files
  SetOutPath "$INSTDIR"
  CreateDirectory "$SMPROGRAMS\Coq"
  ; The first shortcut set here is treated as main application by Windows 7/8.
  ; Use CoqIDE as main application
  CreateShortCut "$SMPROGRAMS\Coq\CoqIDE.lnk" "$INSTDIR\bin\coqide.exe" "" "$INSTDIR\bin\coq.ico" 0
  ; Coq shell
  CreateShortCut "$SMPROGRAMS\Coq\Coq-Shell.lnk" "%COMSPEC%" "/K $INSTDIR\coq-shell.bat" "$INSTDIR\coq-shell.ico" 0
  ; CreateShortCut "$SMPROGRAMS\Coq\Coq.lnk" "$INSTDIR\bin\coqtop.exe"
  WriteINIStr "$SMPROGRAMS\Coq\The Coq HomePage.url" "InternetShortcut" "URL" "http://coq.inria.fr"
  WriteINIStr "$SMPROGRAMS\Coq\The Coq Standard Library.url" "InternetShortcut" "URL" "https://coq.inria.fr/distrib/current/stdlib/"
  CreateShortCut "$SMPROGRAMS\Coq\Uninstall.lnk" "$INSTDIR\Uninstall.exe" "" "$INSTDIR\Uninstall.exe" 0
  ; fill in coq_environment.txt
  SetOutPath "$INSTDIR\bin\"
  Push $9
  FileOpen $9 "$INSTDIR\bin\coq_environment.txt" w
  FileWrite $9 "COQLIB=$\"$INSTDIR$\"$\r$\n"
  FileWrite $9 "OCAMLFIND=$\"$INSTDIR\bin\ocamlfind.exe$\"$\r$\n"
  FileClose $9
  Pop $9
SectionEnd

;OCAML Section "Ocaml for native compute and plugin development" Sec2
;OCAML   SetOutPath "$INSTDIR\"
;OCAML   !include "..\..\..\filelists\ocaml.nsh"
;OCAML
;OCAML   ; Create a few slash / backslash variants of the source and install path
;OCAML   ; Note: NSIS has variables, written as $VAR and defines, written as ${VAR}
;OCAML   !insertmacro StrRep $COQ_SRC_PATH_BS  ${COQ_SRC_PATH} "/" "\"
;OCAML   !insertmacro StrRep $COQ_SRC_PATH_DBS ${COQ_SRC_PATH} "/" "\\"
;OCAML   !insertmacro StrRep $INSTDIR_DBS      $INSTDIR        "\" "\\"
;OCAML
;OCAML   ; Replace absolute paths in some OCaml config files
;OCAML   ; These are not all, see README.txt
;OCAML   !insertmacro ReplaceInFile "$INSTDIR\libocaml\ld.conf" "/"  "\"
;OCAML   !insertmacro ReplaceInFile "$INSTDIR\libocaml\ld.conf" "$COQ_SRC_PATH_BS"  "$INSTDIR"
;OCAML   !insertmacro ReplaceInFile "$INSTDIR\etc\findlib.conf" "$COQ_SRC_PATH_DBS" "$INSTDIR_DBS"
;OCAML SectionEnd

!include "sections_visible.nsh"
!include "sections_hidden.nsh"

;OCAML Section "OCAMLLIB current user" Sec4
;OCAML    WriteRegStr HKCU "Environment" "OCAMLLIB" "$INSTDIR\libocaml"
;OCAML    ; This is required, so that a newly started shell gets the new environment variable
;OCAML    ; But it really takes a few seconds
;OCAML    DetailPrint "Broadcasting OCAMLLIB environment variable change (current user)"
;OCAML    SendMessage ${HWND_BROADCAST} ${WM_WININICHANGE} 0 "STR:Environment" /TIMEOUT=1000
;OCAML SectionEnd

;OCAML Section "OCAMLLIB all users" Sec5
;OCAML    WriteRegStr HKLM "SYSTEM\CurrentControlSet\Control\Session Manager\Environment" "OCAMLLIB" "$INSTDIR\libocaml"
;OCAML    ; This is required, so that a newly started shell gets the new environment variable
;OCAML    ; But it really takes a few seconds
;OCAML    DetailPrint "Broadcasting OCAMLLIB environment variable change (all users)"
;OCAML    SendMessage ${HWND_BROADCAST} ${WM_WININICHANGE} 0 "STR:Environment" /TIMEOUT=1000
;OCAML SectionEnd

;--------------------------------
;Section dependencies

; FUNCTION/MACRO SectionVisibleSelect
; Check dependencies between visible sections and select B when A is selected
; Inform user when sections are selected

; Parameters on the stack:
; top-0 : section B on which section A depends
; top-1 : section A, which depends on section B
; top-2 : name of section B
; top-3 : name of section A

Function SectionVisibleSelect
            ; stack=nameB nameA secB secA rest
  Exch $R3  ; stack=$R3   nameA secB secA rest; $R3=nameB
  Exch      ; stack=nameA $R3   secB secA rest
  Exch $R2  ; stack=$R2   $R3   secB secA rest; $R2=nameA
  Exch 2    ; stack=secB  $R3   $R2  secA rest
  Exch $R1  ; stack=$R1   $R3   $R2  secA rest; $R1=secB
  Exch 3    ; stack=secA  $R3   $R2  $R1  rest;
  Exch $R0  ; stack=$R0   $R3   $R2  $R1  rest; $R0=secA
            ; Take care of save order when popping the stack!
  Push $R4
  Push $R5

  SectionGetFlags $R0 $R0
  IntOp $R0 $R0 & ${SF_SELECTED}

  SectionGetFlags $R1 $R4
  IntOp $R5 $R4 & ${SF_SELECTED}

  ${If} $R0 == ${SF_SELECTED}
  ${AndIf} $R5 != ${SF_SELECTED}

  IntOp $R5 $R4 | ${SF_SELECTED}
  IntOp $R5 $R5 | ${SF_BOLD}
  SectionSetFlags $R1 $R5
  StrCpy $2 "$2 $R3"

  ${EndIf}

  Pop $R5
  Pop $R4
  Pop $R0
  Pop $R3
  Pop $R2
  Pop $R1
FunctionEnd

!macro SectionVisibleSelect secA secB nameA nameB
  Push "${secA}"
  Push "${secB}"
  Push "${nameA}"
  Push "${nameB}"
  Call SectionVisibleSelect
!macroend

!define SectionVisibleSelect "!insertmacro SectionVisibleSelect"

; FUNCTION/MACRO SectionVisibleDeselect
; Check dependencies between visible sections and deselect section A when B is not selected
; Inform user when sections are disabled

; Parameters on the stack:
; top-0 : section B on which section A depends
; top-1 : section A, which depends on section B
; top-2 : name of section B
; top-3 : name of section A

Function SectionVisibleDeselect
            ; stack=nameB nameA secB secA rest
  Exch $R3  ; stack=$R3   nameA secB secA rest; $R3=nameB
  Exch      ; stack=nameA $R3   secB secA rest
  Exch $R2  ; stack=$R2   $R3   secB secA rest; $R2=nameA
  Exch 2    ; stack=secB  $R3   $R2  secA rest
  Exch $R1  ; stack=$R1   $R3   $R2  secA rest; $R1=secB
  Exch 3    ; stack=secA  $R3   $R2  $R1  rest;
  Exch $R0  ; stack=$R0   $R3   $R2  $R1  rest; $R0=secA
            ; Take care of save order when popping the stack!
  Push $R4
  Push $R5

  SectionGetFlags $R1 $R1
  IntOp $R1 $R1 & ${SF_SELECTED}

  SectionGetFlags $R0 $R4
  IntOp $R5 $R4 & ${SF_SELECTED}

  ${If} $R1 != ${SF_SELECTED}
  ${AndIf} $R5 == ${SF_SELECTED}

  IntOp $R5 $R4 & ${SECTION_OFF}
  IntOp $R5 $R5 | ${SF_BOLD}
  SectionSetFlags $R0 $R5
  StrCpy $2 "$2 $R2"

  ${EndIf}

  Pop $R5
  Pop $R4
  Pop $R0
  Pop $R3
  Pop $R2
  Pop $R1
FunctionEnd

!macro SectionVisibleDeselect secA secB nameA nameB
  Push "${secA}"
  Push "${secB}"
  Push "${nameA}"
  Push "${nameB}"
  Call SectionVisibleDeselect
!macroend

!define SectionVisibleDeselect "!insertmacro SectionVisibleDeselect"

; FUNCTION/MACRO CheckHiddenSectionDependency
; Check dependencies between visible sections
; Silently enable all drequired dependent sections

; Parameters on the stack:
; top-0 : section B on which section A dependencies
; top-1 : section A, which depends on section B

Function CheckHiddenSectionDependency
            ; stack=secB secA rest
  Exch $R1  ; stack=$R1   secA rest; $R1=secB
  Exch      ; stack=secA  $R1  rest;
  Exch $R0  ; stack=$R0   $R1  rest; $R0=secA
            ; Take care of save order when popping the stack!
  Push $R2
  Push $R3

  SectionGetFlags $R0 $R0
  IntOp $R0 $R0 & ${SF_SELECTED}

  SectionGetFlags $R1 $R2
  IntOp $R3 $R2 & ${SF_SELECTED}

  ${If} $R0 == ${SF_SELECTED}
  ${AndIf} $R3 != ${SF_SELECTED}

  IntOp $R3 $R2 | ${SF_SELECTED}
  SectionSetFlags $R1 $R3

  ${EndIf}

  Pop $R3
  Pop $R2
  Pop $R0
  Pop $R1
FunctionEnd

!macro CheckHiddenSectionDependency secA secB nameA nameB
  Push "${secA}"
  Push "${secB}"
  Call CheckHiddenSectionDependency
!macroend

!define CheckHiddenSectionDependency "!insertmacro CheckHiddenSectionDependency"

; FUNCTION/MACRO UnselectSectionX
; Unconditonally unselect a section

; Parameters on the stack:
; top-0 : section to be deselected

Function UnselectSectionX
            ; stack=sec rest
  Exch $R0  ; stack=$R0 rest; $R0=sec
  Push $R1

  SectionGetFlags $R0 $R1
  IntOp $R1 $R1 & ${SECTION_OFF}
  SectionSetFlags $R0 $R1

  Pop $R1
  Pop $R0
FunctionEnd

!macro UnselectSectionX sec
  Push "${sec}"
  Call UnselectSectionX
!macroend

!define UnselectSection "!insertmacro UnselectSectionX"

Function .onInit
  Push $R0
  ; For licensing reasons CompCert and VST are off by default
  ; (By agreement with Xavier CompCert shall be explicitly selected)
  ;
  ; Anyway in silent (batch) mode we let everything on in order to be
  ; able able to test the installer in CI
  ${IfNot} ${Silent}
    !ifdef Sec_coq_compcert
      SectionGetFlags ${Sec_coq_compcert} $R0
      IntOp $R0 $R0 & ${SECTION_OFF}
      SectionSetFlags ${Sec_coq_compcert} $R0
    !endif

    !ifdef Sec_coq_vst
      SectionGetFlags ${Sec_coq_vst} $R0
      IntOp $R0 $R0 & ${SECTION_OFF}
      SectionSetFlags ${Sec_coq_vst} $R0
    !endif
  ${EndIf}
  Pop $R0
FunctionEnd

Function .onSelChange
  ; The index of the changed section is in $0. First check if this is a selection or deselection
  Push $1
  Push $2 ; Concatenated package list
  Push $3 ; name of modified package

  SectionGetFlags $0 $1
  SectionGetText $0 $3
  IntOp $1 $1 & ${SF_SELECTED}
  ${If} $1 == ${SF_SELECTED}
    ; The changed package is selected, so select dependencies
    StrCpy $2 ""
    !include "dependencies_visible_selection.nsh"
    ${If} $2 != ""
      MessageBox MB_OK 'The following packages:$\n$\n $2$\n$\nhave been selected, because:$\n$\n  $3$\n$\ndepends on them.$\nAuto (de)selected packages are marked bold (sticky).'
    ${EndIf}
  ${Else}
    ; The changed package is deselected, so deselect packages which depend on it
    StrCpy $2 ""
    !include "dependencies_visible_deselection.nsh"
    ${If} $2 != ""
      MessageBox MB_OK 'The following packages:$\n$\n $2$\n$\nhave been deselected, because they depend on:$\n$\n  $3.$\n$\nAuto (de)selected packages are marked bold (sticky).'
    ${EndIf}
  ${EndIf}
  
  Pop $3
  Pop $2
  Pop $1

  !include "reset_hidden.nsh"
  !include "dependencies_hidden.nsh"
FunctionEnd

;--------------------------------
;Modern UI Configuration

; Note: this must be placed after the sections, because below we need to check at compile time
; if sections exist (by !ifdef <section_index_var>) to decide if the license page must be included.
; The section index variables are only defined after the section definitions.

  !define MUI_ICON "coq.ico"
  ;!define MUI_CUSTOMFUNCTION_GUIINIT PreselectSections

  !insertmacro MUI_PAGE_WELCOME
  !insertmacro MUI_PAGE_LICENSE "LICENSE"
  !insertmacro MUI_PAGE_COMPONENTS

  !ifdef Sec_coq_compcert
    !define LicCompCert_Title "CompCert License Agreement"
    !define LicCompCert_SubTitle "You selected the CompCert addon. CompCert is not open source. Please review the license terms before installing CompCert!"
    !define LicCompCert_Bottom "If you accept the terms of the agreement, click I Agree to continue. Otherwise go back and unselect the CompCert addon."
    !insertmacro MUI_PAGE_LICENSE_EXTRA "coq-compcert-license.txt" "${LicCompCert_Title}" "${LicCompCert_SubTitle}" "${LicCompCert_Bottom}" SelFuncCompCert

    Function SelFuncCompCert
      ${Unless} ${SectionIsSelected} ${Sec_coq_compcert}
        Abort
      ${EndUnless}
    FunctionEnd
  !endif

  !ifdef VST_CHECK_LICENSE
    !ifdef Sec_coq_vst
      !define LicVST_Title "Princeton VST License Agreement"
      !define LicVST_SubTitle "You selected the VST addon. VST contains parts of CompCert which are not open source. Please review the license terms before installing VST!"
      !define LicVST_Bottom "If you accept the terms of the agreement, click I Agree to continue. Otherwise go back and unselect the VST addon."
      !insertmacro MUI_PAGE_LICENSE_EXTRA "coq-vst-license.txt" "${LicVST_Title}" "${LicVST_SubTitle}" "${LicVST_Bottom}" SelFuncVST

      Function SelFuncVST
        ${Unless} ${SectionIsSelected} ${Sec_coq_vst}
          Abort
        ${EndUnless}
      FunctionEnd
    !endif
  !endif

  !define MUI_DIRECTORYPAGE_TEXT_TOP "ATTENTION:$\r$\n -the path must not include spaces$\r$\n- the path must be empty unless you are adding additional packages using the same installer$\r$\n- if you already have a *different* Coq version installed in the *same* place, please uninstall first via add/remove programs$\r$\n- it is fine to install multiple versions of Coq in *different* folders"
  !insertmacro MUI_PAGE_DIRECTORY
  !insertmacro MUI_PAGE_INSTFILES
  !insertmacro MUI_PAGE_FINISH

  !insertmacro MUI_UNPAGE_WELCOME
  !insertmacro MUI_UNPAGE_CONFIRM
  !insertmacro MUI_UNPAGE_INSTFILES
  !insertmacro MUI_UNPAGE_FINISH

;--------------------------------
;Languages

  !insertmacro MUI_LANGUAGE "English"

;--------------------------------
;Language Strings

  ;Description
  !include "strings.nsh"

;--------------------------------
;Descriptions

!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  !include "section_descriptions.nsh"
!insertmacro MUI_FUNCTION_DESCRIPTION_END

;--------------------------------
;Uninstaller Section

Section "Uninstall"
  ; Files and folders
  RMDir /r "$INSTDIR\bin"
  RMDir /r "$INSTDIR\doc"
  RMDir /r "$INSTDIR\etc"
  RMDir /r "$INSTDIR\lib"
  RMDir /r "$INSTDIR\libocaml"
  RMDir /r "$INSTDIR\share"
  RMDir /r "$INSTDIR\ide"
  RMDir /r "$INSTDIR\gtk-2.0"
  RMDir /r "$INSTDIR\latex"
  RMDir /r "$INSTDIR\license_readme"
  RMDir /r "$INSTDIR\man"
  RMDir /r "$INSTDIR\emacs"
  Delete "$INSTDIR\findlib.root"
  Delete "$INSTDIR\coq-shell.ico"
  Delete "$INSTDIR\coq-shell.bat"

  ; Start Menu
  Delete "$SMPROGRAMS\Coq\CoqIde.lnk"
  Delete "$SMPROGRAMS\Coq\coq-shell.lnk"
  Delete "$SMPROGRAMS\Coq\Uninstall.lnk"
  Delete "$SMPROGRAMS\Coq\The Coq HomePage.url"
  Delete "$SMPROGRAMS\Coq\The Coq Standard Library.url"
  Delete "$INSTDIR\Uninstall.exe"

  ; Registry keys
  DeleteRegKey HKCU "Software\${MY_PRODUCT}"
  DeleteRegKey HKLM "SOFTWARE\Coq"
  DeleteRegKey HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\${MY_PRODUCT}"
  ${unregisterExtension} ".v" "Coq Script File"

  ; Root folders
  RMDir "$INSTDIR"
  RMDir "$SMPROGRAMS\Coq"

SectionEnd
