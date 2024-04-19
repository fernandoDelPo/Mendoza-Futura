Algoritmo sin_titulo
	//Programe una función recursiva que calcule la suma de un arreglo de números enteros.
	Definir  vector, suma, i Como Entero
	Dimension vector[4]
	i=0
	Para i=0 hasta 4-1 Hacer
		vector(i)=Aleatorio(0,20)
		Escribir sin saltar " [", vector(i), "] "
	FinPara
	Escribir ""
	
	suma=sumaenteros(vector)
	
FinAlgoritmo
Funcion suma1=sumaenteros(vector Por Referencia)
	Definir suma1, i Como Entero
	i=0
	Para i=0 Hasta 3 Hacer
		Si vector[i]=0 Entonces
			suma1=vector
		SiNo
			suma1=vector(i) + sumaenteros(vector)
		FinSi
	FinPara
	

	Escribir "La suma de los enteros es: ", suma1
FinFuncion

