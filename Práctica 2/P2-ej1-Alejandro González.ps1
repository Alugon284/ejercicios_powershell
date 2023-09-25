$nombreUsuario = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name

$directorioTrabajo = [System.IO.Directory]::GetCurrentDirectory()

$nombreDominio = $env:USERDOMAIN

$nombreEquipo = $env:COMPUTERNAME

Write-Host "Hola $nombreUsuario"
Write-Host "Tu directorio de trabajo es $directorioTrabajo"
Write-Host "Perteneces al dominio $nombreDominio"
Write-Host "Tu equipo se llama $nombreEquipo."