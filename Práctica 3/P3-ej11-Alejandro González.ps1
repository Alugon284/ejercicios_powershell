Clear-Host

$edad = Read-Host "Escribe la edad del cliente"

$edad = [int]$edad

if ($edad -lt 4) {
    $precio = 0 
} elseif ($edad -ge 4 -and $edad -le 18) {
    $precio = 5
} else {
    $precio = 10
}

Write-Host "El precio de la entrada para un cliente de $edad años es de €$precio."
