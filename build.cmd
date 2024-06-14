
wix build -arch x64 -ext WixToolset.UI.wixext swapBuffers-driver-package.wxs -o swapBuffers-driver-package.msi
wix build -arch x64 -ext WixToolset.UI.wixext -ext WixToolset.Bal.wixext swapBuffers-driver-bundle.wxs -o swapBuffers-driver-bundle.exe
