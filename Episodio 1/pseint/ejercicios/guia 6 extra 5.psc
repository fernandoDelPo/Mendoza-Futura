Algoritmo Extra_5
	Definir vector, letra, frase Como Caracter
	Definir i, posicion, distancia, punto, distanciafinal Como Entero
	
	Dimension vector(20)
	
	Escribir "Ingrese una frase"
	leer frase
	
	Para i = 0 Hasta 19 Hacer
		vector(i) = Subcadena(frase, i, i)
	FinPara
	
	
	Para i = 0 Hasta 19 Hacer
		Escribir "(", vector(i),")" Sin Saltar
	FinPara
	Escribir ""
	
	Escribir "Ingrese un caracter a ingresar"
	leer letra
	Escribir "Ingrese la posicion donde desea ingresar el caracter"
	leer posicion
	
	distanciafinal = 19
	
	Si vector(posicion) = " " o vector(posicion) = "" Entonces
		vector(posicion) = letra
	SiNo
		
		Para i = 0 hasta 19 Hacer
			Si vector(i) = "" o vector(i) = " " Entonces
				
				distancia = abs(posicion - i)
				
				Si distancia < distanciafinal Entonces
					distanciafinal = distancia
					punto = i
				FinSi
				
			FinSi
		FinPara
		
		
		Si punto > posicion Entonces
			Para i = posicion + 1 hasta 19 Hacer
				vector(i) = Subcadena(frase,i-1,i-1)
			FinPara
		SiNo
			Para i = punto Hasta posicion Hacer
				vector(i) = Subcadena(frase,i+1,i+1)
			FinPara
		FinSi
		
		vector(posicion) = letra
		
	FinSi
	
	Para i = 0 Hasta 19 Hacer
		Escribir "(", vector(i),")" Sin Saltar
	FinPara
	
FinAlgoritmo