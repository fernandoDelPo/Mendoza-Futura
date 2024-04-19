Algoritmo sin_titulo
	
	Definir alturaEscalera Como Entero
	Leer alturaEscalera
	
	hacerEscaleraNumeros(alturaEscalera)
	
	
FinAlgoritmo

SubProceso hacerEscaleraNumeros(alturaEscalera)
	Definir contador Como Entero
	Definir escaleraNum Como Caracter
	escaleraNum=""
	contador=1
	
	Para contador=1 Hasta alturaEscalera Hacer
		escaleraNum= escaleraNum+ConvertirATexto(contador)
		Escribir escaleraNum
	FinPara
	Escribir ""
FinSubProceso
