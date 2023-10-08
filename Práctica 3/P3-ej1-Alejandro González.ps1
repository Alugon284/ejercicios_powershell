Clear-Host
$numero = Read-Host "Escribe un número"

if ($numero -match '^\d+$') {
    $numero = [int]$numero
    if ($numero % 2 -eq 0) {
        Write-Host "El número $numero es par."
    } else {
        Write-Host "El número $numero es impar."
    }
} else {
    Write-Host "Por favor, escribe un número entero."
}