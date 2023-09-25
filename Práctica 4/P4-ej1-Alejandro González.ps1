$nombre = Read-Host "Escribe tu nombre"

$numero = Read-Host "Ingresa un número entero"
$numero = [int]$numero

for ($i = 1; $i -le $numero; $i++) {
    Write-Host $nombre
}