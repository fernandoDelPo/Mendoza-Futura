Algoritmo sin_titulo
	
	//Recursi�n
	// Escribir una funci�n recursiva que devuelva la suma de los primeros N enteros. (1+2+3+4+5+6+7+8+9+10.,...)
	
	Definir num Como Real
	Escribir "Ingrese un n�mero m�ximo de enteros."
	Leer num
	
	
	Escribir "La suma de los primeros n�meros enteros de la cifra ingresada es: ", sumaEnterosRecursiva(num)
	
FinAlgoritmo

Funcion suma1 = sumaEnterosRecursiva(num1)
	Definir suma1 Como Real
	Si num1=1 Entonces
		suma1=1
		Escribir suma1
	SiNo
		suma1=num1 + sumaEnterosRecursiva(num1-1)
		
	FinSi
	
FinFuncion

