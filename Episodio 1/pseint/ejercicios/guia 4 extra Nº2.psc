Algoritmo sin_titulo
	Definir letra Como Caracter
	Escribir "Ingrese una letra"
	Leer letra
	verificarLetra(letra)
	
	
FinAlgoritmo

SubProceso verificarLetra(letra)
	definir letra1 Como Caracter
	letra1 = Mayusculas(letra)
	
	Si letra1 >= "M" y letra1 <= "T" Entonces
		Escribir "La letra ingresada está entre las letras M y T"
	SiNo
		Escribir "La letra ingresada no está entre las letras M Y"
	FinSi
	
FinSubProceso
	