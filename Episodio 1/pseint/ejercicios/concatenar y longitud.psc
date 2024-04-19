Algoritmo concat_long
	Definir cantidad Como Real;
	Definir pala, cade1, cade2 como cadena
	cade1 ="!"
	cade2 = "?"
	Escribir "Ingrese una frase o palabra"
	leer pala
	cantidad = Longitud(pala)
	Si cantidad = 4 Entonces
		Escribir Concatenar(pala,cade1)
	SiNo
		Escribir Concatenar(pala,cade2)
	FinSi
FinAlgoritmo
