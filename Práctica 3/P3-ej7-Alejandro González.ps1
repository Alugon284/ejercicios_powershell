Clear-Host

$contrasenaGuardada = "Hola01"
 #No sabía si había que solicitar la contraseña al usuario también

$contrasenaUsuario = Read-Host "Introduce tu contraseña"

if ($contrasenaUsuario -ieq $contrasenaGuardada) {
    Write-Host "Contraseña correcta. Acceso concedido."
} else {
    Write-Host "Contraseña incorrecta. Acceso denegado."
}