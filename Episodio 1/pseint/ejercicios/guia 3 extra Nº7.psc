Algoritmo sin_titulo
	
//Se debe realizar un programa que:
	//1�) Pida por teclado un n�mero (entero positivo).
	//2�) Pregunte al usuario si desea introducir o no otro n�mero.
	//3�) Repita los pasos 1� y 2� mientras que el usuario no responda n/N (no).
	//4�) Muestre por pantalla la suma de los n�meros introducidos por el usuario.
	Definir num, suma, num2 Como Real
	Definir eleccion, bandera Como Caracter
	eleccion="s"
	
	Escribir "Ingrese un n�mero"
	Leer num
	suma=0
	bandera="Salir"
	Hacer
		
		Escribir "�Desea ingresar otro n�mero? SI= S - NO= N"
		Leer eleccion
		Si eleccion="S" o eleccion="s"  Entonces
			Escribir "Ingrese el 2� n�mero"
			Leer num2
			suma=num+num2
			Escribir "La suma de los dos n�meros ingresados es: " suma
		SiNo
			eleccion="N"
			Escribir "Adi�s"
		FinSi
	Mientras Que eleccion<>"N"
	
	
	
	
	
FinAlgoritmo
