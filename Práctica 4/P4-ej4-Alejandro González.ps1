do {
    $numero = Read-Host "Escribe un número entero positivo"
    $numero = [int]$numero
} while ($numero -lt 1)

$numerosImpares = ""

for ($i = 1; $i -le $numero; $i += 2) {
    if ($i -ne 1) {
        $numerosImpares += ", "
    }
    $numerosImpares += $i
}

Write-Host $numerosImpares

