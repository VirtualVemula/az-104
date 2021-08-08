#Create AAD USers
#Creation of AAD Users using Powershell
#Install Azure AD Powershell Modules.
Install-Module -Name AzureAD
#Connect to Azure AD
$AzureADCred = Get-Credential
Connect-Azuread -Credential $AzureADCredconn

