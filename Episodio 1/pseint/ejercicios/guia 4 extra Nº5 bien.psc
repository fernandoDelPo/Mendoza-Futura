Algoritmo sin_titulo
	
	//Diseñar un procedimiento que reciba una frase, y el programa remueva todas las
	//vocales repetidas. Al final el procedimiento mostrará la frase final.
	
	Definir fraseEntrada como Cadena
	Escribir "Ingrese una frase"
	Leer fraseEntrada
	
	removerVocalesRepetidas(fraseEntrada)
	
FinAlgoritmo

Subproceso removerVocalesRepetidas(frase)
	Definir i, j, contadorA, contadorE, contadorI, contadorO, contadorU Como Entero
	Definir caracterActual, nuevaFrase como Cadena
	caracterActual=""
	nuevaFrase=""
	contadorA=0
	contadorE=0
	contadorI=0
	contadorO=0
	contadorU=0
	
	Para i=0 hasta (Longitud(frase)-1) con paso 1 Hacer
		caracterActual=Mayusculas(Subcadena(frase, i,i))
		Segun caracterActual hacer
			"A": contadorA = contadorA+1
			"E": contadorE = contadorE+1	
			"I": contadorI = contadorI+1
			"O": contadorO = contadorO+1
			"U": contadorU = contadorU+1	
		FinSegun
		
	FinPara
	
	Para j=0 Hasta (Longitud(frase)-1) Con Paso 1 Hacer
		caracterActual = Mayusculas(Subcadena(frase, j,j))
		Si (caracterActual="A" y contadorA>1) o (caracterActual = "E" y contadorE>1) o (caracterActual = "I" y contadorI>1) o (caracterActual = "O" y contadorO>1) o (caracterActual = "U" y contadorU>1)
			nuevaFrase = Concatenar(nuevaFrase, "")
		SiNo
			nuevaFrase = Concatenar(nuevaFrase, Subcadena(frase, j,j))
			
		FinSi
	FinPara
	
	Escribir  nuevaFrase
	
	
	
	
	
	
FinSubProceso
