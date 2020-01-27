Param ($NewName)

$d = get-date


if ((test-path "c:\serverlog") -eq $false) {mkdir "c:\serverlog"}
$d.tostring("yyyy-MM-dd hh:mm:ss") | out-file "c:\serverlog\log.txt"

netsh.exe advfirewall set allprofiles state off

#Set-DnsClientServerAddress -InterfaceIndex 12 -ServerAddresses ("10.79.2.10","10.79.2.11")

#Add-Computer -DomainName MYLAB.Local -ComputerName TARGETCOMPUTER -newname NewTARGETCOMPUTER
Rename-Computer -NewName "Server044" 

restart-computer -force
