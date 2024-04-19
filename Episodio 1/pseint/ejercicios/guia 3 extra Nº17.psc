Algoritmo sin_titulo
	Definir n, i, contador Como Entero
	n=1
	contador=0
	
	Hacer
		Para i = n+1 Hasta n + n/2 Hacer
			si 2*n^2 = i^2 + i Entonces
				Escribir n, "Es un Centro Numérico"
				contador=contador+1
				
			FinSi
			
		FinPara
		n=n+1
	Mientras Que contador <5 
FinAlgoritmo
