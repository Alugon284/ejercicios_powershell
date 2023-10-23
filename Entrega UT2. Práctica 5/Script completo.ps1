$empresa = "C:\Empresa\"
Clear-Host

if (Test-Path -Path $empresa) {
    Remove-Item -Recurse $empresa -Force
    Remove-SmbShare -Name Empresa -Force
}

New-Item -Path $empresa -ItemType Container

$departaments = Import-Csv C:\Users\Administrador\Desktop\archivos\departamentos.csv -Delimiter ";"

foreach ($dep in $departaments) {
    Remove-SmbShare -Name $dep.departamento -Force
    New-Item -Path "$empresa$($dep.departamento)" -ItemType Container
    New-SmbShare -Path "$empresa$($dep.departamento)" -Name $dep.departamento -FullAccess Administradores -ChangeAccess $dep.departamento -ReadAccess "Usuarios del dominio"
    Grant-SmbShareAccess -Name $dep.departamento -AccountName $dep.departamento -AccessRight Change -Force
    Grant-SmbShareAccess -Name $dep.departamento -AccountName Administradores -AccessRight Full -Force
    Grant-SmbShareAccess -Name $dep.departamento -AccountName "Usuarios del dominio" -AccessRight Read -Force
    Revoke-SmbShareAccess -Name $dep.departamento -AccountName todos -Force

    $acl = Get-Acl -Path "$empresa$($dep.departamento)"
    $acl.SetAccessRuleProtection($true, $false)

    $permiso1 = 'Administradores', 'FullControl', 'ContainerInherit,ObjectInherit', 'None', 'Allow'
    $ace1 = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso1
    $acl.SetAccessRule($ace1)

    $permiso2 = 'Usuarios del dominio', 'Read', 'ContainerInherit,ObjectInherit', 'None', 'Allow'
    $ace2 = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso2
    $acl.SetAccessRule($ace2)

    $permiso3 = $dep.departamento, 'Modify', 'ContainerInherit,ObjectInherit', 'None', 'Allow'
    $ace3 = New-Object -TypeName System.Security.AccessControl.FileSystemAccessRule -ArgumentList $permiso3
    $acl.SetAccessRule($ace3)

    $acl | Set-Acl -Path "$empresa$($dep.departamento)"
}
