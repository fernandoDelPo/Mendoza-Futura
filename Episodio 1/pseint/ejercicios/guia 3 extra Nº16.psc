Algoritmo sin_titulo
	Definir num, aux, f, suma Como entero
	Escribir "Ingrese un número"
	Leer num
	suma=0
	Mientras num>=0 Hacer
		aux=1
		f=1
		Mientras aux <= num Hacer
			f = f * aux
			aux = aux +1
		FinMientras
		suma = suma + f
		Escribir "El factorial de ", num " es: ", f
		num = num -1		
	FinMientras
	
	Escribir "La suma de los factoriales es: ", suma	
	
FinAlgoritmo
