## Create vagrant account

vagrant:vagrant

## Disable UAC

Disable UAC1: Do this from Control Panel > User Accounts > Change user account control settings, drop the slider to the bottom, Never notify. Additionally open an administrator command prompt window: Type cmd in the windows search bar, right-click and choose Run as administrator on the Command Prompt app. Then type the following and press enter ,

```
reg add HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /d 0 /t REG_DWORD /f /reg:64
```

Restart if prompted.

## Relax the Powershell execution policy2: Run Powershell as Administrator and execute this command:

```
Set-ExecutionPolicy -ExecutionPolicy Unrestricted
```

## remove all of the metro apps

```
> Get-AppXPackage -AllUsers | Remove-AppXPackage
```
 
## remove log files

```
> Get-Childitem "C:\Windows\Logs\dosvc" | Remove-Item -Verbose
```
 
## disables the system restore feature

```
> Disable-ComputerRestore c:
```
 
## disable hibernation

```
> powercfg -h off
```

## Configure and Enable WinRM service1: In the Administrator command prompt paste each line and press enter ,

```
winrm quickconfig -q 
winrm set winrm/config/winrs @{MaxMemoryPerShellMB="512"} 
winrm set winrm/config @{MaxTimeoutms="1800000"}
winrm set winrm/config/service @{AllowUnencrypted="true"}
winrm set winrm/config/service/auth @{Basic="true"} 
sc config WinRM start= auto
```

The last line configures winrm services to start automatically. This will allow Vagrant to connect to the box and control it. WinRm is the alternative to ssh for windows boxes.

## Cleanup WinSXS update debris

Now that we have installed those updates there are gigabytes (not many but enough) of backup and rollback files lying on disk that we dont care about. We are not concerned with uninstalling any of the updates. New in windows 8.1/2012 R2 (and back ported to win 7/2008R2) there is a command that will get rid of all of this unneeded data:

```
Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase
```

## Additional disk cleanup

On windows client SKUs you have probably used the disk cleanup tool to remove temp files, error reports, web cache files, etc. This tool is not available by default on server SKUs but you can turn it on. We will go ahead and do that:

```
Add-WindowsFeature -Name Desktop-Experience
```

This will require a reboot to take effect, but once that completes, the "Disk Cleanup" button should be available on the property page from the root of our C: drive or we can launch from a command line:

```
C:\Windows\System32\cleanmgr.exe /d c:
```

## Defragment the drive

Now we will defrag and possibly retrim the drive using the powershell command:

```
Optimize-Volume -DriveLetter C
```

## Purge any hidden data

Its possible there is unallocated space on disk with data remaining that can hinder the ability to compact the disk and also limit the compression algorithm's ability to fully optimize the size of the final box file. There is a sysinternals tool, sdelete, that will "0 out" this unused space:

```
wget http://download.sysinternals.com/files/SDelete.zip -OutFile sdelete.zip
[System.Reflection.Assembly]::LoadWithPartialName("System.IO.Compression.FileSystem")
[System.IO.Compression.ZipFile]::ExtractToDirectory("sdelete.zip", ".")
./sdelete.exe -z c:
```

## Shutdown

```
Stop-Computer
```

## Create box
Go inside vmware fusion folder for image and run

```
tar -cvzf windows10_fusion.box ./*
```

## Add box

```
$ vagrant box add windows10_fusion windows10_fusion.box
```
