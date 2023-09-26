$contrasenaCorrecta = "contraseña"

do {
    $contrasenaIngresada = Read-Host "Ingresa la contraseña"

    if ($contrasenaIngresada -ne $contrasenaCorrecta) {
        Write-Host "Contraseña incorrecta. Intenta nuevamente."
    }
    else {
        Write-Host "¡Contraseña correcta! Acceso concedido."
    }
} while ($contrasenaIngresada -ne $contrasenaCorrecta)
