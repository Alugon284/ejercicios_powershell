clear-host
$num1 = Read-Host "Escribe el primer número"
$num1 = [double]$num1

$num2 = Read-Host "Escribe el segundo número"
$num2 = [double]$num2

Write-Host "Resultados de $num1 y $num2"
Write-Host "Suma: $($num1 + $num2)"
Write-Host "Resta: $($num1 - $num2)"
Write-Host "Multiplicación: $($num1 * $num2)"

if ($num2 -ne 0) {
    Write-Host "División: $($num1 / $num2)"
    Write-Host "Resto: $($num1 % $num2)"
} else {
    Write-Host "No se puede dividir por cero."
}