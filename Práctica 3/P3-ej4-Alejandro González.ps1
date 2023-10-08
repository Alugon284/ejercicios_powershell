Clear-Host

Write-Host "****** CALCULADORA ********"
Write-Host "1. Sumar"
Write-Host "2. Restar"
Write-Host "3. Multiplicar"
Write-Host "4. Dividir"

$opcion = Read-Host "¿Qué desea hacer? Elige una opción (1,2,3 o 4):"

$numero1 = Read-Host "Escribe el primer número"
$numero2 = Read-Host "Escribe el segundo número"

$numero1 = [double]$numero1
$numero2 = [double]$numero2

switch ($opcion) {
    1 { $resultado = $numero1 + $numero2 }
    2 { $resultado = $numero1 - $numero2 }
    3 { $resultado = $numero1 * $numero2 }
    4 {
        if ($numero2 -eq 0) {
            Write-Host "Error: No se puede dividir por cero."
        } else {
            $resultado = $numero1 / $numero2
        }
    }
    default { Write-Host "Opción no válida." }
}

if ($opcion -ge 1 -and $opcion -le 4 -and $numero2 -ne 0) {
    Write-Host "El resultado es: $resultado"
}