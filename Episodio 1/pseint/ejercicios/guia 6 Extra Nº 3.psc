Algoritmo sin_titulo
	//Crear dos vectores que tengan el mismo tama�o (el tama�o se pedir� por teclado) y
	//almacenar en uno de ellos nombres de personas como cadenas. En el segundo vector
	//se debe almacenar la longitud de cada uno de los nombres (para ello puedes usar la
	//funci�n Longitud() de PseInt). Mostrar por pantalla cada uno de los nombres junto con su
	//longitud.
	Definir nombres Como Caracter
	Definir vector, i, largo Como Entero
	Escribir "Ingrese el tampa�o de los Vectores"
	leer largo
	Dimension nombres(largo)
	Dimension vector(largo)
	
	i=0

	Para i=0 hasta largo-1 Hacer
		Escribir "Ingrese el nombre"
		Leer nombres(i)
	FinPara
	Para i=0 Hasta largo-1 Hacer
		Escribir "El nombre ", nombres(i), " tiene ", Longitud((nombres(i))), " letras." ///Esta l�nea tambien puede ir adentro del PARA anterior luego de leer nombres
	FinPara
	
FinAlgoritmo
