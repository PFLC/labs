<#
SCRIPT PARA CREAR 2 CUENTAS ADMINISTRATIVAS Y BORRAR LA DEL USUARIO LOCAL PUBLICO

#>

New-LocalUser -Name "soporte" -Description "Description of your new account soporte." -NoPassword
New-LocalUser -Name "prestamo" -Description "Description of your new account prestamo." -NoPassword

Add-LocalGroupMember -Group "Administrators" -Member "soporte"
Add-LocalGroupMember -Group "Administrators" -Member "prestamo"

[System.Windows.MessageBox]::Show('Script preparacion Laptops Vorago, teclea la cuentaa borrar')
$cuenta = Read-Host -AsSecureString


Remove-LocalUser -Name $cuenta
