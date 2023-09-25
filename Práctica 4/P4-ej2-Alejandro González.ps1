clear-host
$edad = Read-Host "Escribe tu edad"

$edad = [int]$edad

if ($edad -gt 0) {

    for ($i = 1; $i -le $edad; $i++) {
        Write-Host "Año $i"
    }
} else {
    Write-Host "Escribe una edad válida, no has puesto nada."
}