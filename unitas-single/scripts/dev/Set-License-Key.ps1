$licenseFileName = "c:\vagrant\scripts\dev\license.txt"

If (Test-Path $licenseFileName) {
	foreach ($content in (Get-Content $licenseFileName))
	{
		# Ignore blank lines
		if ($content) {
			$licensekey += $content
		}
	}

	cscript C:\Windows\System32\slmgr.vbs -ipk $licensekey
}
