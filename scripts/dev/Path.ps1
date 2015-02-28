### Add github's git install to path ###
[Microsoft.Win32.Registry]::SetValue("HKEY_CURRENT_USER\Environment","Path","%localappdata%\GitHub\PORTAB~1\bin\",[Microsoft.Win32.RegistryValueKind]::ExpandString)
