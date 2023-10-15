#Creando la unidad organizativa
New-ADOrganizationalUnit -Name "EMPRESA" -Path "DC=EMPRESA,DC=LOCAL"

$departament = Import-Csv -Path C:\Users\Administrador\Desktop\archivos\departamentos.csv -Delimiter ';'
$empleados = Import-Csv -Path C:\Users\Administrador\Desktop\archivos\empleados.csv -Delimiter ';'

#Creando los departamentos
foreach ( $ou in $departament) {

$Dname = $ou.departamento
$OUdescription = $ou.descripcion

New-ADOrganizationalUnit -Name $Dname -Description $OUdescription -Path "OU=EMPRESA,DC=EMPRESA,DC=LOCAL"
New-ADGroup -Name $Dname -GroupCategory Security -GroupScope Global -Path "OU=$Dname,OU=EMPRESA,DC=EMPRESA,DC=LOCAL"

}

#Creando los empleados
foreach ( $user in $empleados) {

$Departamento = $user.departamento
$nombre = $user.nombre
$apellido = $user.apellido
 
New-ADUser -Name "$nombre.$apellido" -GivenName $nombre -Surname $apellido -Path "OU=$Departamento,OU=EMPRESA,DC=EMPRESA,DC=LOCAL" -AccountPassword (ConvertTo-SecureString -AsPlainText "aso2021." -Force) -ChangePasswordAtLogon $true -Enabled $true


Add-ADGroupMember -identity $Departamento -Members "$nombre.$apellido"

} 

