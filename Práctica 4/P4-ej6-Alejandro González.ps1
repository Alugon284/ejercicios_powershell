$numeroObjetivo = Get-Random -Minimum 0 -Maximum 101

Write-Host "He seleccionado un número entre 0 y 100. ¡Adivina cuál es!"

$intentos = 0

do {
    $adivinanza = Read-Host "Ingresa tu suposición"
    $adivinanza = [int]$adivinanza
    $intentos++
    clear-host
    if ($adivinanza -eq $numeroObjetivo) {
        Write-Host "¡Enhorabuena! Has adivinado el número $numeroObjetivo en $intentos intentos."
    } elseif ($adivinanza -lt $numeroObjetivo) {
        Write-Host "El número es mayor. Sigue intentando."
    } else {
        Write-Host "El número es menor. Sigue intentando."
    }
} while ($adivinanza -ne $numeroObjetivo)

