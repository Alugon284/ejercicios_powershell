Clear-Host

$opcion = Read-Host "¿Quieres una pizza vegetariana? (Sí/No)"

$opcion = $opcion.ToLower()

$ingredientes = @("Mozzarella", "Tomate")

if ($opcion -eq "si" -or $opcion -eq "sí") {
    Write-Host "Ingredientes vegetarianos disponibles:"
    Write-Host "1. Pimiento"
    Write-Host "2. Tofu"
} elseif ($opcion -eq "no") {
    Write-Host "Ingredientes no vegetarianos disponibles:"
    Write-Host "1. Peperoni"
    Write-Host "2. Jamón"
    Write-Host "3. Salmón"
} else {
    Write-Host "Opción no válida. Debe ingresar 'Sí' o 'No'."
    exit
}

$eleccion = Read-Host "Elige  un ingrediente adicional (1/2/3):"

switch ($eleccion) {
    1 { $ingredientes += "Pimiento" }
    2 { $ingredientes += "Tofu" }
    3 { $ingredientes += "Peperoni" }
    4 { $ingredientes += "Jamón" }
    5 { $ingredientes += "Salmón" }
    default { Write-Host "Elección no válida." }
}

if ($opcion -eq "si" -or $opcion -eq "sí") {
    $esVegetariana = "Sí"
} else {
    $esVegetariana = "No" 
}

Write-Host "Tu pizza es vegetariana: $esVegetariana"
Write-Host "Ingredientes: $($ingredientes -join ', ')"