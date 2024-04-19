Algoritmo sin_titulo
	//Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
	//usuario. A continuación, se debe buscar un elemento dentro del arreglo (el número a
	//buscar también debe ser ingresado por el usuario). El programa debe indicar la posición
	//donde se encuentra el valor. En caso que el número se encuentre repetido dentro del
	//arreglo se deben imprimir todas las posiciones donde se encuentra ese valor.
	//Finalmente, en caso que el número a buscar no está adentro del arreglo se debe mostrar
	//un mensaje.
	Definir vector, num, num1, i Como Real
	i=0
	Escribir "Ingrese el tamaño del VECTOR"
	leer num
	Dimension vector(num)
	
	Escribir "Ingrese los números que conformarán el VECTOR"
	
	Para i=0 Hasta num-1 Hacer
		Leer vector(i)
	FinPara
	
	Escribir "Ingrese el número que desea localizar dentro del VECTOR"
	Leer num1
	
	Para i=0 hasta num-1 Hacer
		Si num1=vector(I) Entonces
			Escribir "El número ingresado se encuentra en el SUB-INDICE: ", "[", i, "]  "
		
		FinSi
		
	FinPara
	
FinAlgoritmo
