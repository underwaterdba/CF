$d = get-date


if ((test-path "c:\serverlog") -eq $false) {mkdir "c:\serverlog"}
$d.tostring("yyyy-MM-dd hh:mm:ss") | out-file "c:\serverlog\log.txt"

netsh.exe advfirewall set allprofiles state off
