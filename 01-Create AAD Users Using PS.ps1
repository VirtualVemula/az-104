#Creation of AAD Users using Powershell
#Install Azure AD Powershell Modules.
Install-Module -Name AzureAD
#Connect to Azure AD
$AzureADCred = Get-Credential
Connect-Azuread -Credential $AzureADCredconn
#Create user vuser4 using Powershell, replace -UserPrinicipalName your default domain name.
$PasswordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$PasswordProfile.Password = "Test@123"
New-AzureADUser -AccountEnabled $True -DisplayName "Vuser4" -PasswordProfile $PasswordProfile -MailNickName "Vuser4" -UserPrincipalName "Vuser4@vemula4uhotmail.onmicrosoft.com"