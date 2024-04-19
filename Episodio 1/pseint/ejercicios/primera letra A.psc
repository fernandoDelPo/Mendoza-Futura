Algoritmo primeraletraA
	
	Definir cade, cade1 Como caracter

	Escribir "Ingrese una palabra o frase que comience con la letra A"
	Leer cade
	cade1<-Subcadena(cade, 0,0)
	
	si cade1 = "A" Entonces
		Escribir " CORRECTO."
	SiNo
		Escribir  " INCORRECTO."
	FinSi
FinAlgoritmo
