Algoritmo sin_titulo
	//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
	//usuario y muestre por pantalla el promedio de la suma de todos los valores ingresados.
	Definir largo, suma, vector1, i Como Entero
	Definir promedio Como Real
	Escribir "Ingrese el tamaño del VECTOR"
	Leer largo
	i=0
	suma=0
	promedio=0
	Dimension vector1(largo)
	Escribir "Ingrese los valores de VECTOR 1 "
	Para i=0 hasta largo-1 Hacer
		leer vector1(i) 
		suma=suma+vector1(i)
	FinPara
	Escribir ""
	promedio=suma/largo
	Escribir "El promedio de la suma de todos los valores del VECTOR es de : ", promedio
	
FinAlgoritmo
