Algoritmo sin_titulo
	//Escribir un programa que calcule la suma de los N primeros números naturales. El valor
	//de N se leerá por teclado.
	
	Definir i, num, num2 Como Entero
	num2=0
	i=1
	Escribir "Ingrese la cantidad de los primeros números naturales que desea sumar"
	Leer num
	Para i<-i Hasta num Con Paso 1 Hacer
		num2=num2+i
	FinPara
	Escribir "La suma de los números naturales es de: ", num2;
FinAlgoritmo
