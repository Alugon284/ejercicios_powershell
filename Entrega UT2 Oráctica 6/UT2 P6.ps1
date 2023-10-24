
$baseFolderPath = "C:\Empresa_users"

$users = Import-Csv -Path "C:\Users\Administrador\Desktop\archivos\empleados.csv" -Delimiter ';'

New-SmbShare -Name "Empresa_Users$" -Path $baseFolderPath -FullAccess "Administrators" -ChangeAccess "Everyone" -Description "Carpeta de usuarios de la empresa"

foreach ($empleado in $users) {
    $departamento = $empleado.departamento
    $nombre = $empleado.nombre
    $apellido = $empleado.apellido
    $nombreUsuario = "$nombre.$apellido"
    Write-Output $nombreUsuario
    if (Get-ADUser -Filter {SamAccountName -eq $nombreUsuario}) {
        $carpetaUsuario = Join-Path -Path $baseFolderPath -ChildPath $nombreUsuario
        if (Test-Path -Path $carpetaUsuario -PathType Container) {
            Remove-Item -Path $carpetaUsuario -Recurse -Force
        }

        New-Item -Path $carpetaUsuario -ItemType Directory

        Set-ADUser -Identity $nombreUsuario -ScriptPath "carpetas.bat" -HomeDrive "Z:" -HomeDirectory "\\Empresa-dc1\Empresa_users`$\$nombreUsuario"

        $acl = Get-Acl -Path $carpetaUsuario
        $acl.SetAccessRuleProtection($true, $false)

        $rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Administradores", "FullControl", "ContainerInherit, ObjectInherit", "None", "Allow")
        $acl.AddAccessRule($rule)
        $rule = New-Object System.Security.AccessControl.FileSystemAccessRule($nombreUsuario, "FullControl", "ContainerInherit, ObjectInherit", "None", "Allow")
        $acl.AddAccessRule($rule)

       Set-Acl -Path $carpetaUsuario -AclObject $acl
    } else {
        Write-Host "El usuario $nombreUsuario no existe en el dominio."
    }
}
