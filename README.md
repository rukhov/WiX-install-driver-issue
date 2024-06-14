# Calling to the InstallHinfSection SETUPAPI function makes bundle installer to run second install instance.

## WiX-install-driver-issue
This is a minimal set of code for WiX bug report

## Steps to reproduce.

1. build the installer with command build.cmd
2. copy bundle installer swapBuffers-driver-bundle.exe to the machine where Test Signed drivers loading is enabled. See https://learn.microsoft.com/en-us/windows-hardware/drivers/install/the-testsigning-boot-configuration-option
3. Double click the bundle installer swapBuffers-driver-bundle.exe.
4. Follow the installer's instructions to install the driver.

## Actual result.

When the installer's finish screen is appear or several seconds later the second instance of installer is started.

## Expected result.

There is not any additional installer instance appeared to user.

## Additional information.

1. Driver binaries are built from sources of MS sample kernel driver.
https://github.com/microsoft/Windows-driver-samples/tree/main/filesys/miniFilter/swapBuffers
2. If you install the driver by MSI package swapBuffers-driver-package.msi the issue is not reproduced.
3. The issue reproduces only if InstallHinfSection SETUPAPI function is called to install driver in CustomAction through the EXE or DLL.
