Clear-Host

$nombre = Read-Host "Escribe tu nombre"
$sexo = Read-Host "Escribe tu sexo (M para mujer, H para hombre)"

$grupo = if (($sexo -eq "M" -and $nombre -lt "M") -or ($sexo -eq "H" -and $nombre -gt "N")) {
    "A"
} else {
    "B"
}

Write-Host "Perteneces al grupo $grupo."
