cinst -y dotnet3.5
cinst -y sqlserver2008r2express -InstallArguments "/ACTION=install /IACCEPTSQLSERVERLICENSETERMS /FEATURES=SSMS /SECURITYMODE=SQL /SAPWD=mirabira /INSTANCENAME=MSSQLSERVER /SQLCOLLATION=Finnish_Swedish_CI_AS /TCPENABLED=1"
