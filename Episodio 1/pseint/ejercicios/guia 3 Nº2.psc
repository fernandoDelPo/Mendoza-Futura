Algoritmo Suma_limite
	//Escriba un programa en el cual se ingrese un valor l�mite positivo, 
	//y a continuaci�n solicite n�meros_al usuario_hasta_que la suma de_los_n�meros introducidos supere el l�mite inicial.
	
	Definir Limite, i, suma Como Entero
	
	Limite=20
	suma=0
	i=0
	Mientras suma <= Limite Hacer
		Escribir "Ingrese un numero a sumar"
		Leer i
		suma=suma+i
	FinMientras
	
	Escribir "Usted supero el valor l�mite inicial."
	
FinAlgoritmo
