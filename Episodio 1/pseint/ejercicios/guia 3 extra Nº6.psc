Algoritmo sin_titulo
	//Realizar un programa que solicite al usuario su c�digo de usuario (un n�mero entero
	//mayor que cero) y su contrase�a num�rica (otro n�mero entero positivo). El programa
	//no le debe permitir continuar hasta que introduzca como c�digo 1024 y como
	//contrase�a 4567. El programa finaliza cuando ingresa los datos correctos.
	
	
	Definir usuario, contrasena Como Entero
	
	usuario=0
	contrasena=0
	
	Mientras  usuario<>1024 y contrasena<>4567 Hacer
		Escribir "Ingrese USUARIO:" Sin Saltar
		Leer usuario
		Escribir "Ingrese CONTRASE�A:"
		Leer contrasena
	FinMientras
FinAlgoritmo
