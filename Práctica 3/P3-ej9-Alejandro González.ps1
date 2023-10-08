Clear-Host

$rentaAnual = Read-Host "Escribe tu renta anual en euros"

$rentaAnual = [double]$rentaAnual

$tipoImpositivo = ""
if ($rentaAnual -lt 10000) {
    $tipoImpositivo = "5%"
} elseif ($rentaAnual -ge 10000 -and $rentaAnual -lt 20000) {
    $tipoImpositivo = "15%"
} elseif ($rentaAnual -ge 20000 -and $rentaAnual -lt 35000) {
    $tipoImpositivo = "20%"
} elseif ($rentaAnual -ge 35000 -and $rentaAnual -lt 60000) {
    $tipoImpositivo = "30%"
} else {
    $tipoImpositivo = "45%"
}

Write-Host "Tu renta anual de $rentaAnual € corresponde a un tipo impositivo del $tipoImpositivo."
