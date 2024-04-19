Algoritmo sin_titulo
	//Siguiendo el ejercicio 20 de los ejercicios principales, ahora deberemos hacer lo mismo
	//pero que la cadena se muestre al revés. Por ejemplo, si tenemos la cadena: Hola,
	//deberemos mostrar a l o H.
	
	
	Definir cade1, cade2,tmp,j Como Caracter
	Definir i, k, size Como Entero
	Escribir "Ingresa un texto"
	leer cade1
	cade2=" "
	size=Longitud(cade1)
	k=0
	j=[ ]
	Para i=0 hasta size Hacer
		tmp=Subcadena(cade1, size-k, size-k)
		j=Concatenar(j, tmp)
		k=k+1
		Escribir sin saltar tmp, cade2
	FinPara
	
FinAlgoritmo
