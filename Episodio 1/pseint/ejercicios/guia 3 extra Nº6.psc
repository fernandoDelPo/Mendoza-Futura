Algoritmo sin_titulo
	//Realizar un programa que solicite al usuario su código de usuario (un número entero
	//mayor que cero) y su contraseña numérica (otro número entero positivo). El programa
	//no le debe permitir continuar hasta que introduzca como código 1024 y como
	//contraseña 4567. El programa finaliza cuando ingresa los datos correctos.
	
	
	Definir usuario, contrasena Como Entero
	
	usuario=0
	contrasena=0
	
	Mientras  usuario<>1024 y contrasena<>4567 Hacer
		Escribir "Ingrese USUARIO:" Sin Saltar
		Leer usuario
		Escribir "Ingrese CONTRASEÑA:"
		Leer contrasena
	FinMientras
FinAlgoritmo
