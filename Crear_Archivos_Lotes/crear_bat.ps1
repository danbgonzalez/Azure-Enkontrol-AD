
#Crear archivos por lotes para el despligue de las nuevas aplicaciones

#Linea para crear los archivos

"-------------------------------------------"
"Creación de archivos de paquetes por lotes"
"-------------------------------------------"

" "

#variables
$ruta = Read-Host "Ingresa la ruta donde se crearan los archivos"
$archivo = Read-Host "pegue el archivo csv"
$guardarArchivo = Import-Csv -path $archivo
$incio = "@Echo Off"
$espacio = " "

foreach($leer in $guardarArchivo){
	
	#variable que guarda el nombre que tendra el archivo
	$nombreArchivo = $leer.nombreEX
	
	#variable que guarda la segunda linea que tendra el archivo donde esta la ruta de la
	$rutaGuardar = $leer.rutaApp
	#variable que concateca el cuerpo del archivo
	$varCon = "$incio`n$espacio`n$rutaGuardar"
	
	#comando para crear los archivos
New-Item -Path $ruta -Name $nombreArchivo -ItemType "file" -Value $varCon
}


