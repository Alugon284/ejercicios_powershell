clear-host
$edad = Read-Host "Escribe tu edad"

if ($edad -match '^\d+$') {
    $edad = [int]$edad
    if ($edad -ge 18) {
        Write-Host "Eres mayor de edad."
    } else {
        Write-Host "Eres es mayor de edad."
    }
} else {
    Write-Host "Escribe tu edad como un número entero."
}
