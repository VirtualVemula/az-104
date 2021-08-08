# This Script creates a Powershell Script to Deploy a Resource Group and a Disk in it.

#Variables required to deploye the resource group.
$Resoucegroup = 'Az104-RG-lab1'
$Location = 'Central US'


#Deployment of Azure Resource Group.
Write-Host 'Creating a resource group' -BackgroundColor Yellow -ForegroundColor Red
$RG = New-AzResourceGroup -Name $Resoucegroup -Location $Location
Write-Host 'Created a resouce group' $RG.ResourceGroupName 'location' $RG.Location -BackgroundColor Yellow -ForegroundColor Red
#Create a Disk with 32 GB Standard.

$Diskconfig1 = New-AzDiskConfig `
-Location $Location `
-Creationoption Empty `
-DiskSizeGB 32 `
-Sku Standard_LRS `

$Diskname1 = 'disk1'

#New-AzDisk -ResourceGroupName $Resoucegroup -DiskName $Diskname1 -Disk $Diskconfig1

<#$diskConfig = New-AzDiskConfig `
 -Location $Location `
 -CreateOption Empty `
 -DiskSizeGB 32 `
 -Sku Standard_LRS

$diskName = 'az104-03c-disk1'#>

New-AzDisk `
 -ResourceGroupName $Resoucegroup `
 -DiskName $diskName `
 -Disk $diskConfig





