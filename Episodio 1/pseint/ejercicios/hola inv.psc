Algoritmo sin_titulo
	Definir cade1, cade2,tmp,j Como Caracter
	Definir i, k, size Como Entero
	Escribir "Ingresa un texto"
	leer cade1
	cade2=" "
	size=Longitud(cade1)
	k=0
	j=[]
	Para i=0 hasta size Hacer
		tmp=Subcadena(cade1, size-k, size-k)
		j=Concatenar(j, tmp)
		k=k+1
		
	FinPara
	Escribir Concatenar(j, cade2)
FinAlgoritmo
