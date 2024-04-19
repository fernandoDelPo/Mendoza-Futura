Algoritmo sin_titulo
	
//Se debe realizar un programa que:
	//1º) Pida por teclado un número (entero positivo).
	//2º) Pregunte al usuario si desea introducir o no otro número.
	//3º) Repita los pasos 1º y 2º mientras que el usuario no responda n/N (no).
	//4º) Muestre por pantalla la suma de los números introducidos por el usuario.
	Definir num, suma, num2 Como Real
	Definir eleccion, bandera Como Caracter
	eleccion="s"
	
	Escribir "Ingrese un número"
	Leer num
	suma=0
	bandera="Salir"
	Hacer
		
		Escribir "¿Desea ingresar otro número? SI= S - NO= N"
		Leer eleccion
		Si eleccion="S" o eleccion="s"  Entonces
			Escribir "Ingrese el 2º número"
			Leer num2
			suma=num+num2
			Escribir "La suma de los dos números ingresados es: " suma
		SiNo
			eleccion="N"
			Escribir "Adiós"
		FinSi
	Mientras Que eleccion<>"N"
	
	
	
	
	
FinAlgoritmo
