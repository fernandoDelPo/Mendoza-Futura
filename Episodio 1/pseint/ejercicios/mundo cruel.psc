Algoritmo sin_titulo
	Definir vector, pala, caracterletra, cade Como Caracter
	Definir  i, largo, num Como Real
	Escribir "Ingrese una frase de 20 o menos espacios"
	Leer pala
	Dimension vector(20)
	largo=Longitud(pala)
	
	Para i=0 hasta largo Hacer
		vector(i) = Subcadena(pala, i,i)
		Escribir Sin Saltar "[", vector(i), "]"
	FinPara
	
	Escribir ""
	Escribir "Ingrese un caracter o letra cualquiera para añadir a la frase"
	Leer  caracterletra
	Escribir "Indique el valor de una posición vacía  a ocupar por el caracter o letra"
	Leer num
	
	
	
	
	Para i=num hasta num Hacer
		Si i=num y Subcadena(pala,i,i) = " " Entonces
			vector(i) = caracterletra
		Sino
			Escribir "El espacio se encuentra ocupado"
			
			
		FinSi
	FinPara
	
	Para i=0 hasta largo Hacer
		
		Escribir Sin Saltar "[", vector(i), "]"
	FinPara
	Escribir ""
	
	
FinAlgoritmo

