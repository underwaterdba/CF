Set-DnsClientServerAddress -InterfaceIndex 12 -ServerAddresses ("10.79.2.10","10.79.2.11")


$Secure_String_Pwd = ConvertTo-SecureString "@t#5%L3WVa%" -AsPlainText -Force

$mycreds = New-Object System.Management.Automation.PSCredential ("alacra.eu\administrator", $Secure_String_Pwd)

add-computer -domain "alacra.eu" -Credential $mycreds 

restart-computer -force
