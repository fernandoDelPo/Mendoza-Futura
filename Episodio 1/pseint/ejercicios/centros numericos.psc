Algoritmo sin_titulo
	
	Definir n, sumaAC, sumaDC, num, i, contador Como Entero
	
	num=1
	sumaAC=1
	sumaDC=1
	contador=0
	Repetir
		
		para i<-1 Hasta num Con Paso 1 Hacer
			sumaAC=sumaAC+1
		FinPara
		
		para i<- num+1 Hasta num*2 Con Paso 1 Hacer
			si (sumaAC=sumaDC) Entonces
				Escribir num, "Es un centro numérico"
				contador=contador+1
				
			SiNo
				sumaDC=sumaDC+i
			FinSi
		FinPara
		num=num+1
		sumaAC=0
		sumaDC=0
	Mientras Que contador<5
		
	
		
	
	
FinAlgoritmo
