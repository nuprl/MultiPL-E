@ECHO OFF
REM This script initalizes a command prompt such that Coq is in the PATH and COQLIB is set.
REM If you run the script with "CMD /K", the command window remains open after the script finishes.

SET "ROOT=%~dp0"

REM Check if coqc is in the install location
IF NOT EXIST "%ROOT%\bin\coqc.exe" (
    ECHO "This script expects that coqc is installed in %ROOT%\bin"
    EXIT /B 1
) ELSE (
    ECHO "Using coqc from %ROOT%\bin"
    SET "PATH=%ROOT%\bin;%PATH%"
)

REM set COQLIB variable
FOR /F "tokens=* USEBACKQ" %%F IN (`coqc -where`) DO SET "COQLIB=%%F"
