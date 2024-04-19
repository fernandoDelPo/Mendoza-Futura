Algoritmo sin_titulo
	//Crear dos vectores que tengan el mismo tamaño (el tamaño se pedirá por teclado) y
	//almacenar en uno de ellos nombres de personas como cadenas. En el segundo vector
	//se debe almacenar la longitud de cada uno de los nombres (para ello puedes usar la
	//función Longitud() de PseInt). Mostrar por pantalla cada uno de los nombres junto con su
	//longitud.
	Definir nombres Como Caracter
	Definir vector, i, largo Como Entero
	Escribir "Ingrese el tampaño de los Vectores"
	leer largo
	Dimension nombres(largo)
	Dimension vector(largo)
	
	i=0

	Para i=0 hasta largo-1 Hacer
		Escribir "Ingrese el nombre"
		Leer nombres(i)
	FinPara
	Para i=0 Hasta largo-1 Hacer
		Escribir "El nombre ", nombres(i), " tiene ", Longitud((nombres(i))), " letras." ///Esta línea tambien puede ir adentro del PARA anterior luego de leer nombres
	FinPara
	
FinAlgoritmo
