cinst GoogleChrome
cinst -y visualstudio2013premium -InstallArguments "/Features:'WebTools'"
cinst -y vs2013.4
#cinst resharper -Version 8.2.3000.5176
cinst -y resharper
cinst -y linqpad
cinst -y dotnet3.5
cinst -y sqlserver2008r2express -InstallArguments "/ACTION=install /IACCEPTSQLSERVERLICENSETERMS /FEATURES=SSMS /SECURITYMODE=SQL /SAPWD=mirabira /INSTANCENAME=MSSQLSERVER /SQLCOLLATION=Finnish_Swedish_CI_AS /TCPENABLED=1"
cinst -y notepadplusplus.install
cinst -y git.install
