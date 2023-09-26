$numero = Read-Host "Escribe un número para mostrar su tabla de multiplicar"

$numero = [int]$numero

if ($numero -gt 0) {
    Write-Host "Tabla de multiplicar del $numero"
    for ($i = 1; $i -le 10; $i++) {
        $resultado = $numero * $i
        Write-Host "$numero x $i = $resultado"
    }
} else {
    Write-Host "Tienes que escribir un número mayor que 0."
}
