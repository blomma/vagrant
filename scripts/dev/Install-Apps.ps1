cinst GoogleChrome
cinst -y visualstudio2013premium -InstallArguments "/Features:'WebTools'"
cinst -y vs2013.4
#cinst resharper -Version 8.2.3000.5176
cinst -y resharper
cinst -y linqpad
cinst -y notepadplusplus.install
cinst -y git.install

# Install extensions
wget https://visualstudiogallery.msdn.microsoft.com/2e8ebfe4-023f-4c4d-9b7a-d05bbc5cb239/file/117003/20/VSWindowTitleChanger.vsix -OutFile c:\Users\vagrant\VSWindowTitleChanger.vsix
& 'C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\VSIXInstaller.exe' /q C:\Users\vagrant\VSWindowTitleChanger.vsix

wget https://visualstudiogallery.msdn.microsoft.com/56633663-6799-41d7-9df7-0f2a504ca361/file/105627/44/WebEssentials2013.vsix -OutFile C:\Users\vagrant\WebEssentials2013.vsix
& 'C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\VSIXInstaller.exe' /q C:\Users\vagrant\WebEssentials2013.vsix
