Clear-Host

$puntuacion = Read-Host "Escribe tu puntuación (0.0, 0.4, 0.6 o más)"

$puntuacion = [decimal]$puntuacion

$nivel = switch ($puntuacion) {
    0.0 { "Inaceptable" }
    0.4 { "Aceptable" }
    { $_ -ge 0.6 } { "Meritorio" }
    default { "Puntuación no válida" }
}

$cantidadDinero = if ($nivel -ne "Puntuación no válida") { $puntuacion * 2400 } else { 0 }

Write-Host "Tu nivel de rendimiento es: $nivel"
Write-Host "La cantidad de dinero que recibiras es: €$cantidadDinero"
