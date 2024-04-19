Algoritmo sin_titulo
	//Programe una función recursiva que calcule la suma de un arreglo de números enteros.
	Definir  vector, suma, i, num Como Entero
	Escribir "Ingrese el número de subíndices del vector"
	leer num
	Dimension vector[num]
	i=0
	Para i=0 hasta num-1 Hacer
		vector(i)=Aleatorio(0,20)
		Escribir sin saltar " [", vector(i), "] "
	FinPara
	Escribir ""
	num=num-1
	suma=sumaenteros(vector, num)
	Escribir "La suma de los enteros es: ", suma
FinAlgoritmo
Funcion suma1=sumaenteros(vector, num)
	Definir suma1, i Como Entero
	
	Si num=0 Entonces
		suma1=vector(0)
	SiNo
		suma1=vector(num) + sumaenteros(vector,num-1)
	FinSi
	
FinFuncion

