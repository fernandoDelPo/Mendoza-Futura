Algoritmo sin_titulo
	
	//La funci�n factorial se aplica a n�meros enteros positivos. El factorial de un n�mero
	//entero positivo (!n) es igual al producto de los enteros positivos desde 1 hasta n:
	//n! = 1 * 2 * 3 * 4 * 5 * (n-1) * n
	//Escriba un programa que calcule los factoriales de todos los n�meros enteros desde el
	//1 hasta el 5. El programa deber� mostrar la siguiente salida:
	//!1 = 1
	//!2 = 1*2 = 2
	//...
	//!5 = 1*2*3*4*5 = 120
	//Nota: si necesitas saber m�s sobre la funci�n factorial revisar este link: Funcion Factorial
	
	Definir num, f, i, j, contador Como Entero
	Escribir "Ingrese un n�mero para saber su factorial n!"
	Leer num
	f=1
	contador=1
	
	Para i<-1 hasta num Con Paso 1 Hacer
		Para j=i Hasta i Con Paso -1 Hacer
				f= f * contador
				Escribir sin saltar i,"n!-",  f
				contador=contador+1			
			
			
		FinPara
		
		Escribir ""
		
		
	FinPara
	
	
	
FinAlgoritmo
