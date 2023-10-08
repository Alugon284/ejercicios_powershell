Clear-Host

$numero1 = Read-Host "Escribe un número"
$numero2 = Read-Host "Escribe otro número"

$numero1 = [int]$numero1
$numero2 = [int]$numero2

if ($numero1 -gt $numero2) {
    Write-Host "El primer número ($numero1) es mayor que el segundo ($numero2)."
} elseif ($numero1 -lt $numero2) {
    Write-Host "El primer número ($numero1) es menor que el segundo ($numero2)."
} else {
    Write-Host "El primer número ($numero1) es igual al segundo número ($numero2)."
}