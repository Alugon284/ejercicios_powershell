clear-host

$horasTrabajadas = Read-Host "Escribe cuantas horas has trabajado"

$horasTrabajadas = [decimal]$horasTrabajadas

$costoPorHora = Read-Host "Ingresa el costo por hora"

$costoPorHora = [decimal]$costoPorHora

$salario = $horasTrabajadas * $costoPorHora

Write-Host "El sueldo a pagar es: $salario"
