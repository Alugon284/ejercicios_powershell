do {
    $numero = Read-Host "Escribe un número entero positivo"
    $numero = [int]$numero
} while ($numero -lt 0)

$cuentaAtras = ""

for ($i = $numero; $i -ge 0; $i--) {
    $cuentaAtras += $i.ToString()
    if ($i -ne 0) {
        $cuentaAtras += ", "
    }
}

Write-Host $cuentaAtras
