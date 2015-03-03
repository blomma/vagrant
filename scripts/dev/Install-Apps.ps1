cinst -y GoogleChrome
cinst -y visualstudio2013premium -InstallArguments "/Features:'WebTools'"
cinst -y vs2013.4
cinst -y resharper -Version 8.2.3000.5176
cinst -y linqpad
cinst -y notepadplusplus.install

# Install extensions
wget https://visualstudiogallery.msdn.microsoft.com/2e8ebfe4-023f-4c4d-9b7a-d05bbc5cb239/file/117003/20/VSWindowTitleChanger.vsix -OutFile c:\Users\vagrant\VSWindowTitleChanger.vsix | out-null
& 'C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\VSIXInstaller.exe' /q C:\Users\vagrant\VSWindowTitleChanger.vsix | out-null

wget https://visualstudiogallery.msdn.microsoft.com/56633663-6799-41d7-9df7-0f2a504ca361/file/105627/44/WebEssentials2013.vsix -OutFile C:\Users\vagrant\WebEssentials2013.vsix | out-null
& 'C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\VSIXInstaller.exe' /q C:\Users\vagrant\WebEssentials2013.vsix | out-null
