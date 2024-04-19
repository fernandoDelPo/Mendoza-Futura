Algoritmo promedio_positivos
	//Dada una secuencia de números ingresados por teclado que finaliza con un ?1, por
    //ejemplo: 5,3,0,2,4,4,0,0,2,3,6, 0,?,-1; realizar un programa que calcule el promedio de los
	//números ingresados. Suponemos que el usuario no insertará número negativos.
	
	Definir num, suma, contador Como Entero
	Definir promedio Como Real
	
	suma=0
	contador=0
	num=0
	Mientras num <> -1 Hacer
		Escribir "Ingrese el número a promediar"
		leer num
		Si num <=-2 Entonces
			Escribir "El número ingresado es incorrecto. Por favor ingrese un número positivo."
		SiNo
			suma=suma+num
			contador=contador+1
		FinSi
	FinMientras
	
	promedio=suma/contador
	
	Escribir "El promedio de los números ingresados es:  ", promedio;
	
FinAlgoritmo
