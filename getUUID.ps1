#Author: Christopher Dalyan Sparrowgrove

$output = "***************************************************************"
Write-Output $output  | Out-File -FilePath output.txt 
$output = "*           Script Author: Christopher Sparrowgrove           *"
Write-Output $output  | Out-File -FilePath output.txt -append
$output = "* License: Creative Commons Attribution-ShareAlike (CC-BY-SA) * "
Write-Output $output  | Out-File -FilePath output.txt -append
$output = "***************************************************************"
Write-Output $output  | Out-File -FilePath output.txt  -append
$output = " "
Write-Output $output  | Out-File -FilePath output.txt  -append

$getUUID = (Get-CimInstance -Class Win32_ComputerSystemProduct).UUID
$getGUID = (Get-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Cryptography -Name MachineGuid).MachineGuid
$getMachineName =  $env:computername
$getSerialNumber = wmic bios get serialnumber
$getCurrentUser = whoami

#Get the UUID and output to the file
$output = "UUID: "
$output += $getUUID
Write-Output $output  | Out-File -FilePath output.txt -append

#Get the GUID and output to the file
$output = "GUID: "
$output += $getGUID
Write-Output $output  | Out-File -FilePath output.txt -append

#Get the Machine Name and output to the file
$output = "MachineName: "
$output += $getMachineName
Write-Output $output  | Out-File -FilePath output.txt -append

#Get the Serial Number and output to the file
$output = ""
$output += $getSerialNumber
Write-Output $output  | Out-File -FilePath output.txt -append

#Get the current User and output to the file
$output = "CurrentUser: "
$output += $getCurrentUser
Write-Output $output  | Out-File -FilePath output.txt -append

#Get the MAC Addresses and output to the file
#$output = "MACAddresses: "
#$output += $getMacAdddres
#Write-Output $output  | Out-File -FilePath output.txt -append


#ALT-CODE: Get the MAC Addresses and output to the file
Write-Output "MAC Address: " | Out-File -FilePath output.txt -append
ipconfig /all|find "Physical Address"  | Out-File -FilePath output.txt -append

