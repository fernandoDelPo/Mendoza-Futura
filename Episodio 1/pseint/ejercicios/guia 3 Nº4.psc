Algoritmo sin_titulo
	//Teniendo en cuenta que la clave es "eureka", escribir un programa que nos pida ingresar
	//una clave. Sólo se cuenta con 3 intentos para acertar, si fallamos los 3 intentos se deberá
	//mostrar un mensaje indicándonos que hemos agotado esos 3 intentos. Si acertamos la
	//clave se deberá mostrar un mensaje que indique que se ha ingresado al sistema correctamente.
	
	
	Definir contrasenia Como caracter
	definir contador, contador1 Como Entero
	
	contador=0
	contador1=3
	Hacer
		Escribir "Ingrese la contraseña"
		Leer contrasenia
		contador1=contador1-1
		Si contrasenia = "eureka" Entonces
			Escribir "Contraseña correcta"
		SiNo
			Escribir "Contraseña INVALIDA"
			Escribir "Le quedan ", contador1, " intentos"
		FinSi
		contador=contador+1
		
	Mientras Que contrasenia<>"eureka" y contador <3 
	
FinAlgoritmo
