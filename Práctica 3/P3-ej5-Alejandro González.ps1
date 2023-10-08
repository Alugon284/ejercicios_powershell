Clear-Host
$ruta = Read-Host "Escribe la ruta a un archivo o carpeta"

if (Test-Path -Path $ruta) {
    Write-Host "La ruta '$ruta' existe."
} else {
    Write-Host "La ruta '$ruta' no existe."
}
