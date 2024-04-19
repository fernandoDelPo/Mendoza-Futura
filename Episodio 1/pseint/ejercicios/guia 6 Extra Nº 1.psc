Algoritmo sin_titulo
	//Realizar un programa que rellene dos vectores al mismo tiempo, con 5 valores aleatorios
	//y los muestre por pantalla.
	
	Definir vector1, vector2, i Como Entero
	Dimension vector1(5)
	Dimension vector2(5)
	
	i=0
	Escribir " VECTOR 1 "
	Para i=0 hasta 5-1 Hacer
		vector1(i) =Aleatorio(0,5)
		vector2(i)=Aleatorio(0,5)
		Escribir sin saltar " [", vector1(i), "] "
	FinPara
	salto()
	Escribir " VECTOR 2 "
	Para i=0 hasta 5-1 Hacer
		Escribir Sin Saltar " [", vector2(i), "] "
	FinPara
	salto()
FinAlgoritmo
SubProceso salto()
	Escribir ""
FinSubProceso
	