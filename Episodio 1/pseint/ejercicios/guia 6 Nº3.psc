Algoritmo sin_titulo
	//Realizar un programa que rellene un vector de tama�o N, con valores ingresados por el
	//usuario. A continuaci�n, se debe buscar un elemento dentro del arreglo (el n�mero a
	//buscar tambi�n debe ser ingresado por el usuario). El programa debe indicar la posici�n
	//donde se encuentra el valor. En caso que el n�mero se encuentre repetido dentro del
	//arreglo se deben imprimir todas las posiciones donde se encuentra ese valor.
	//Finalmente, en caso que el n�mero a buscar no est� adentro del arreglo se debe mostrar
	//un mensaje.
	Definir vector, num, num1, i Como Real
	i=0
	Escribir "Ingrese el tama�o del VECTOR"
	leer num
	Dimension vector(num)
	
	Escribir "Ingrese los n�meros que conformar�n el VECTOR"
	
	Para i=0 Hasta num-1 Hacer
		Leer vector(i)
	FinPara
	
	Escribir "Ingrese el n�mero que desea localizar dentro del VECTOR"
	Leer num1
	
	Para i=0 hasta num-1 Hacer
		Si num1=vector(I) Entonces
			Escribir "El n�mero ingresado se encuentra en el SUB-INDICE: ", "[", i, "]  "
		
		FinSi
		
	FinPara
	
FinAlgoritmo
