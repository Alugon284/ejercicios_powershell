clear-host

$altura = Read-Host "Introduce un número entero para la altura del triángulo"

if (-not [int]::TryParse($altura, [ref]$null) -or $altura -le 0) {
    Write-Host "Por favor, introduce un número entero positivo válido."
}
else {
    $altura = [int]$altura

    for ($i = 1; $i -le $altura; $i++) {
        Write-Host ("*" * $i)
    }
}