Clear-Host

$ruta = Read-Host "Escribe la ruta"

if (Test-Path -Path $ruta -PathType Container) {
    Write-Host "La ruta '$ruta' es un directorio."

    Get-ChildItem -Path $ruta -File -Directory -Recurse | Select-Object FullName
} elseif (Test-Path -Path $ruta -PathType Leaf) {

    Write-Host "La ruta '$ruta' es un archivo."
} else {
    Write-Host "La ruta '$ruta' no es un directorio válido ni un archivo válido."
}
#No se por qué no aparecen los archivos de dentro del directorio, no he podido arreglarlo