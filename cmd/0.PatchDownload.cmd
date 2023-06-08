@ECHO OFF&(CD /D "%~DP0")&(FLTMC>NUL)||(mshta vbscript:CreateObject^("Shell.Application"^).ShellExecute^("%~snx0"," %*","","runas",1^)^(window.close^)&&exit /b)

set "aria2=bin\aria2c.exe"
set "patchDir=patch"

echo Patch Downloading...
"%aria2%" --no-conf --check-certificate=false -x16 -s16 -j5 -c -R -d"%patchDir%" -i"Scripts\script_17763_x64.txt"