To run a powershell script directly from git hub use the follwing procedure.
1) Copy the RAW Git URL of the Script that you like to execute
2)Read the output of Invoke-WebRequest command into a Variable as shown below.
$ss = Invoke-WebRequest https://raw.githubusercontent.com/VirtualVemula/az-104/master/01-Create%20AAD%20Users%20Using%20PS.ps1
3)Run the following command to execute the ps script in git hub.
Invoke-Expression $ss.Content