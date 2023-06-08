@ECHO OFF&(CD /D "%~DP0")&(FLTMC>NUL)||(mshta vbscript:CreateObject^("Shell.Application"^).ShellExecute^("%~snx0"," %*","","runas",1^)^(window.close^)&&exit /b)

set "a7z=bin\7z.exe"
set "ISODir=ISO"

::dir /b /a:-d *.iso 1>nul 2>nul && (for /f "delims=" %%# in ('dir /b /a:-d *.iso') do set "isofile=%%#")
dir /b /a:-d %USERPROFILE%\desktop\*.iso 1>nul 2>nul && (for /f "delims=" %%# in ('dir /b /a:-d %USERPROFILE%\desktop\*.iso') do set "isofile=%%#")
%a7z% x "%USERPROFILE%\desktop\%isofile%" -o"%~dp0%ISODir%" -r
