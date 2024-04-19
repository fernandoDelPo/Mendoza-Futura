Algoritmo sin_titulo
	
	Definir vector, pala, caracterletra, cade Como Caracter
	Definir  i, j, largo, largo2, num Como Real
	Escribir "Ingrese una frase de 20 o menos espacios"
	Leer pala
	Dimension vector(20)
	largo=Longitud(pala)
	
	Para i=0 hasta 20-1 Hacer
		vector(i) = Subcadena(pala, i,i)
		Escribir Sin Saltar "[", vector(i), "]"
	FinPara
	
	Escribir ""
	Escribir "Ingrese un caracter o letra cualquiera para añadir a la frase"
	Leer  caracterletra
	Escribir "Indique el valor de una posición vacía  a ocupar por el caracter o letra"
	Leer num
	cade=Subcadena(pala, num, largo-1)
	largo2=Longitud(cade)
	Escribir cade
	i=0
	j=0
	
	Para i=0 hasta 20-1 Hacer
		Si i=num y Subcadena(pala,i,i) <> " " Entonces
			vector(i) = caracterletra 
			
			Para j=largo2-1 hasta num+1 Con Paso -1 Hacer
				vector(j)=Subcadena(cade, j,j)
			FinPara
			
			
		FinSi
	FinPara
	
	


	
	Para i=0 hasta 20-1 Hacer
		
		Escribir Sin Saltar "[", vector(i), "]"
	FinPara
	Escribir ""
	
	
FinAlgoritmo