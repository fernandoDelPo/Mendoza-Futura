Algoritmo sin_titulo
	//Crear un programa que ordene un vector lleno de números enteros aleatorios, de menor
	//a mayor. Nota: investigar el ordenamiento burbuja en el siguiente link: Ordenamiento
	//Burbuja.
	Definir i, j, temp, vector Como Entero
	Dimension vector[6]
	Escribir "VECTOR ORIGINAL"
	Escribir ""
	Para i=0 hasta 5 Hacer
		vector[i] = Aleatorio(0,20)
		Escribir Sin Saltar " [", vector[i], "] "
	FinPara
	Escribir ""
	
	Para i=0 Hasta 4 Hacer
		Para j=0 hasta 4 Hacer
			Si vector[j] > vector[j+1] Entonces
				temp = vector[j]
				vector[j] = vector[j+1]
				vector[j+1]= temp
			FinSi
		FinPara
	FinPara
	Escribir ""
	Escribir ""
	Escribir "ORDENAMIENTO BURBUJA"
	Escribir ""
	Para i=0 hasta 5 Hacer
		Escribir Sin Saltar " [", vector[i], "] "
	FinPara
	Escribir ""
FinAlgoritmo
