
set CUR_DIR=%cd%

RUNDLL32.EXE SETUPAPI.DLL,InstallHinfSection DefaultUninstall 132 %CUR_DIR%\swapBuffers.inf
