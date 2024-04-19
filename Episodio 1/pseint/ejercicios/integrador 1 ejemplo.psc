Algoritmo sin_titulo
	definir  num, i, j, largo, contador Como Entero
	definir resp Como Logico
	definir matriz, pala Como Caracter
	leer pala
	largo=Longitud(pala)
	num=3
	Dimension matriz[num, num]
	
	contador=0
	PAra i=0 Hasta num-1 Hacer
		Para j=0 Hasta num-1 Hacer
			matriz[i,j] = Subcadena(pala, contador, contador)
			contador= contador+1
			Escribir Sin Saltar " [", matriz[i,j], "] "
		FinPara
		Escribir""
	FinPara
	resp=incognita(matriz, num)
FinAlgoritmo

Funcion resp=incognita(matriz, num)
	Definir i, j Como Entero
	Definir resp Como Logico
	Definir letra0, letraM Como Caracter
	
	letra0=matriz[0,0]
	letraM=matriz[0,num-1]
	
	resp=Verdadero
	
	Para i=0 Hasta num-1 Hacer
		Para j=0 Hasta num-1 Hacer
			Si i==j Entonces
				Si letra0<>matriz[i,j] Entonces
					resp=falso
					i=num-1
					j=num-1
				FinSi
			FinSi
			Si i+j==num-1 Entonces
				Si letraM<>matriz[i,j] Entonces
				resp=Falso
				i=num-1
				j=num-1
			FinSi
		FinSi
		FinPara
	FinPara
	Escribir ""
	PAra i=0 Hasta num-1 Hacer
		Para j=0 Hasta num-1 Hacer
			Escribir Sin Saltar " [", matriz[i,j], "] "
		FinPara
		Escribir""
	FinPara
FinFuncion
