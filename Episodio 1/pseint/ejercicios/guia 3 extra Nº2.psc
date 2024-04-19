Algoritmo sin_titulo
	//Escriba un programa que solicite dos números enteros (mínimo y máximo). A
	//continuación, se debe pedir al usuario que ingrese números enteros situados entre el
	//máximo y mínimo. Cada vez que un numero se encuentre entre ese intervalo, se sumara
	//uno a una variable. El programa terminará cuando se escriba un número que no
	//pertenezca a ese intervalo, y al finalizar se debe mostrar por pantalla la cantidad de
	//números ingresados dentro del intervalo.
	
	Definir max, min, num, contador Como Entero
	
	Escribir "Ingrese el un número minimo y un numero máximo" 
	Leer min, max
	contador=0
	Escribir "Ingrese un número entre el número mínimo y número máximo antes digitado"
	leer num
	
	Mientras num>=min y num<=max Hacer
		contador=contador+1
		Escribir "Ingrese nuevamente otro número entre el mínimo y el máximo"
		leer num
	FinMientras
	
	Escribir "La cantidad de números entre el mínimo y máximo que fueron ingresados es de: ", contador
	
FinAlgoritmo
