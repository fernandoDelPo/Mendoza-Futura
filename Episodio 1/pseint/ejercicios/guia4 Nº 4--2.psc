Algoritmo sin_titulo
	Definir frase, frase_codificada como caracter
	Leer frase
	codificador_de_frase(frase, frase_codificada)
	Escribir "La frase codificada es"
	Escribir frase_codificada
	
	
FinAlgoritmo

SubProceso codificador_de_frase(frase_1, frase_codificada por referencia)
	definir i Como Entero
	frase_codificada=""
	Para i = 0 Hasta Longitud(frase_1) Hacer
		Segun Subcadena(frase_1, i,i) Hacer
			'a': frase_codificada=Concatenar(frase_codificada, "@")
			'b': frase_codificada=Concatenar(frase_codificada, "#")
			'i': frase_codificada=Concatenar(frase_codificada, "$")
			'o': frase_codificada=Concatenar(frase_codificada, "%")
			'u': frase_codificada=Concatenar(frase_codificada, "*")
			'.': frase_codificada=Concatenar(frase_codificada, Subcadena(frase_1, i,i))
				i=Longitud(frase_1)
			De Otro Modo:
				frase_codificada=Concatenar(frase_codificada, Subcadena(frase_1, i, i))
		FinSegun
		
	FinPara
FinSubProceso
