Algoritmo sin_titulo
	
	//La función factorial se aplica a números enteros positivos. El factorial de un número
	//entero positivo (!n) es igual al producto de los enteros positivos desde 1 hasta n:
	//n! = 1 * 2 * 3 * 4 * 5 * (n-1) * n
	//Escriba un programa que calcule los factoriales de todos los números enteros desde el
	//1 hasta el 5. El programa deberá mostrar la siguiente salida:
	//!1 = 1
	//!2 = 1*2 = 2
	//...
	//!5 = 1*2*3*4*5 = 120
	//Nota: si necesitas saber más sobre la función factorial revisar este link: Funcion Factorial
	
	Definir num, f, i, contador Como Entero
	Escribir "Ingrese un número para saber su factorial n!"
	Leer num
	f=1
	contador=1
	 
	Para i<-1 hasta num Con Paso 1 Hacer
		Si f=contador Entonces
			f= f * contador
			Escribir sin saltar i,"n!-", f, " * ", contador, "=", f
			contador=contador+1
		FinSi
		
		Escribir ""
			
				
	FinPara
	
	
	
FinAlgoritmo
