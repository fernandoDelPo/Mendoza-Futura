Algoritmo sin_titulo
	//Escriba un programa que solicite dos n�meros enteros (m�nimo y m�ximo). A
	//continuaci�n, se debe pedir al usuario que ingrese n�meros enteros situados entre el
	//m�ximo y m�nimo. Cada vez que un numero se encuentre entre ese intervalo, se sumara
	//uno a una variable. El programa terminar� cuando se escriba un n�mero que no
	//pertenezca a ese intervalo, y al finalizar se debe mostrar por pantalla la cantidad de
	//n�meros ingresados dentro del intervalo.
	
	Definir max, min, num, contador Como Entero
	
	Escribir "Ingrese el un n�mero minimo y un numero m�ximo" 
	Leer min, max
	contador=0
	Escribir "Ingrese un n�mero entre el n�mero m�nimo y n�mero m�ximo antes digitado"
	leer num
	
	Mientras num>=min y num<=max Hacer
		contador=contador+1
		Escribir "Ingrese nuevamente otro n�mero entre el m�nimo y el m�ximo"
		leer num
	FinMientras
	
	Escribir "La cantidad de n�meros entre el m�nimo y m�ximo que fueron ingresados es de: ", contador
	
FinAlgoritmo
