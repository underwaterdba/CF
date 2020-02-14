Param ($NewName)

$d = get-date


if ((test-path "c:\serverlog") -eq $false) {mkdir "c:\serverlog"}
$d.tostring("yyyy-MM-dd hh:mm:ss") | out-file "c:\serverlog\log.txt"

netsh.exe advfirewall set allprofiles state off

Set-DnsClientServerAddress -InterfaceIndex 12 -ServerAddresses ("10.24.45.34","10.24.46.34","10.30.9.33","10.30.10.33")

#Add-Computer -DomainName MYLAB.Local -ComputerName TARGETCOMPUTER -newname NewTARGETCOMPUTER
Rename-Computer -NewName $NewName -force -restart


