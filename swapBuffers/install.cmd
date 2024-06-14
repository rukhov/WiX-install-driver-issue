
set CUR_DIR=%cd%

RUNDLL32.EXE SETUPAPI.DLL,InstallHinfSection DefaultInstall 132 %CUR_DIR%\swapBuffers.inf

