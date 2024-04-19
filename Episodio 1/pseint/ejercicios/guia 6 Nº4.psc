Algoritmo sin_titulo
	//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
	//usuario. A continuación, se deberá crear una función que reciba el vector y devuelva el
	//valor más grande del vector.
	
	Definir  a, max Como Real
	
	max=0
	
	a=buscarmayor(max)

	
FinAlgoritmo
Funcion b=buscarmayor(max)
	Definir vector, b,  num, i, mayor, menor Como Entero
	
	i=0
	Escribir "Ingrese el tamaño del VECTOR"
	leer num
	
	
	Dimension vector(num)
	
	mayor=0
	menor=0
	
	
	Escribir "Ingrese los números que conformarán el VECTOR"
	Para i=0 Hasta num-1 Hacer
		Leer vector(i)
	FinPara
	
	Para i=0 hasta num-1 Hacer
		
			si vector(i)>mayor Entonces
				mayor=vector(i)
			FinSi
			Si vector(i)<menor Entonces
				menor=vector(i)
			FinSi
		
	FinPara
	Escribir "El mayor valor ingresado en el VECTOR es: ", "[", mayor, "]"
FinFuncion

