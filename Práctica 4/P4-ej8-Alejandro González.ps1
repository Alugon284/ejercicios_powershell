
$numero = Read-Host "Introduce un número entero"

if (-not [int]::TryParse($numero, [ref]$null) -or $numero -le 0) {
    Write-Host "Por favor, introduce un número entero positivo válido."
}
else {

    $numero = [int]$numero

    for ($i = 1; $i -le $numero; $i++) {
        $linea = 1..$i | Where-Object { $_ % 2 -eq 1 } | ForEach-Object { "$_" }
        $linea = $linea -join " "
        Write-Host $linea
    }
}
