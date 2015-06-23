cinst -y GoogleChrome
cinst -y visualstudio2013premium -InstallArguments "/Features:'WebTools'"
cinst -y vs2013.4
cinst -y resharper -Version 8.2.3000.5176
cinst -y linqpad
cinst -y notepadplusplus.install
cinst -y filezilla
cinst -y tortoisesvn
cinst -y libreoffice

wget https://visualstudiogallery.msdn.microsoft.com/56633663-6799-41d7-9df7-0f2a504ca361/file/105627/44/WebEssentials2013.vsix -OutFile C:\Users\vagrant\WebEssentials2013.vsix | out-null
& 'C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\VSIXInstaller.exe' /q C:\Users\vagrant\WebEssentials2013.vsix | out-null

# Visual Studio Templates

[Microsoft.Win32.Registry]::SetValue("HKEY_CURRENT_USER\SOFTWARE\Microsoft\VisualStudio\12.0","UserItemTemplatesLocation","\\parallel\Mira\Program\Utvecklingsmiljö\VSTemplates\ItemTemplates",[Microsoft.Win32.RegistryValueKind]::ExpandString)

# Visual Studio Snippets
$v = [Microsoft.Win32.Registry]::GetValue("HKEY_CURRENT_USER\SOFTWARE\Microsoft\VisualStudio\12.0\Languages\CodeExpansions\Visual C#","Path",[Microsoft.Win32.RegistryValueKind]::ExpandString)
$v = $v + ";\\parallel\Mira\Program\Utvecklingsmiljö\VSSnippets\"

[Microsoft.Win32.Registry]::SetValue("HKEY_CURRENT_USER\SOFTWARE\Microsoft\VisualStudio\12.0\Languages\CodeExpansions\Visual C#","UserItemTemplatesLocation",$v,[Microsoft.Win32.RegistryValueKind]::ExpandString)
