Algoritmo Suma_limite
	//Escriba un programa en el cual se ingrese un valor límite positivo, 
	//y a continuación solicite números_al usuario_hasta_que la suma de_los_números introducidos supere el límite inicial.
	
	Definir Limite, i, suma Como Entero
	
	Limite=20
	suma=0
	i=0
	Mientras suma <= Limite Hacer
		Escribir "Ingrese un numero a sumar"
		Leer i
		suma=suma+i
	FinMientras
	
	Escribir "Usted supero el valor límite inicial."
	
FinAlgoritmo
