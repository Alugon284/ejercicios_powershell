do {
    Clear-Host

    Write-Host "Menú:"
    Write-Host "a) Crear una carpeta"
    Write-Host "b) Crear un fichero nuevo"
    Write-Host "c) Cambiar el nombre de un fichero o carpeta"
    Write-Host "d) Borrar un archivo o carpeta"
    Write-Host "e) Verificar si existe un fichero o carpeta"
    Write-Host "f) Mostrar el contenido de un directorio"
    Write-Host "g) Mostrar la fecha y hora actuales"
    Write-Host "x) Salir"

    $opcion = Read-Host "Por favor, selecciona una opción"

    switch ($opcion) {
        'a' {
            $nombreCarpeta = Read-Host "Introduce el nombre de la carpeta que deseas crear"
            New-Item -ItemType Directory -Path $nombreCarpeta -ErrorAction SilentlyContinue
        }
        'b' {
            $nombreArchivo = Read-Host "Introduce el nombre del archivo que deseas crear"
            New-Item -ItemType File -Path $nombreArchivo -ErrorAction SilentlyContinue
        }
        'c' {
            $rutaOriginal = Read-Host "Introduce la ruta original del archivo o carpeta"
            $nuevoNombre = Read-Host "Introduce el nuevo nombre"
            Rename-Item -Path $rutaOriginal -NewName $nuevoNombre -ErrorAction SilentlyContinue
        }
        'd' {
            $rutaBorrar = Read-Host "Introduce la ruta del archivo o carpeta que deseas borrar"
            Remove-Item -Path $rutaBorrar -Force -ErrorAction SilentlyContinue
        }
        'e' {
            $rutaVerificar = Read-Host "Introduce la ruta del archivo o carpeta que deseas verificar"
            if (Test-Path -Path $rutaVerificar) {
                Write-Host "El archivo o carpeta existe."
            } else {
                Write-Host "El archivo o carpeta no existe."
            }
        }
        'f' {
            $rutaDirectorio = Read-Host "Introduce la ruta del directorio que deseas listar"
            Get-ChildItem -Path $rutaDirectorio
        }
        'g' {
            Get-Date
        }
        'x' {
            Write-Host "Saliendo del programa..."
            break
        }
        default {
            Write-Host "Opción no válida. Por favor, selecciona una opción válida."
        }
    }

    Read-Host "Presiona Enter para continuar..."

} while ($opcion -ne 'x')
