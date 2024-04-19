Algoritmo sin_titulo
	//Una matriz m�gica es una matriz cuadrada (tiene igual n�mero de filas que de columnas)
	//que tiene como propiedad especial que la suma de las filas, las columnas y las
	//diagonales es igual. Por ejemplo:
	// 2 7 6
	// 9 5 1
	// 4 3 8
	//En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir
	//un algoritmo que compruebe si una matriz de datos enteros es m�gica o no, y en caso
	//de que sea m�gica escribir la suma. Adem�s, el programa deber� comprobar que los
	//n�meros introducidos son correctos, es decir, est�n entre el 1 y el 9. El usuario ingresa el
	//tama�o de la matriz que no debe superar orden igual a 10.
	Definir matriz, f, c Como Entero
	Escribir "Ingrese el tama�o de la matriz cuadrada, la cual no debe superar el orden 10. M�ximo [10,10]"
	Leer f, c
	Escribir ""
	Si f>10 y c>10 Entonces
		Escribir "N�meros incorrectos: El tama�o de la Matriz supera el orden 10"
	SiNo
		Dimension matriz[f,c]
	FinSi
	
	llenarmatriz(matriz, f, c)
	sumadiagonalprincipal(matriz, f, c)
	sumadiagonalsecundaria(matriz, f, c)
FinAlgoritmo

//-------------------------------------------------------------------
Subproceso llenarmatriz(matriz, f, c)
	Definir i, j Como Entero
	Para i=0 hasta f-1 Hacer
		Para j=0 Hasta c-1 Hacer
			matriz[i,j]=Aleatorio(1,9)
			Escribir Sin Saltar " [", matriz[i,j], "] "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

//--------------------------------------------------------------------
SubProceso sumadiagonalprincipal(matriz, f, c)
	Definir sumadprincipal, i, j Como Entero
	sumadprincipal=0
	
	Para i=0 hasta f-1 Hacer
		Para j=0 Hasta c-1 Hacer
			Si i=j Entonces
				sumadprincipal=sumadprincipal+matriz[i,j]
			FinSi
		FinPara
	FinPara
	
FinSubProceso

//--------------------------------------------------------------------
SubProceso sumadiagonalsecundaria(matriz, f, c)
	Definir sumadsecund, i, j Como Entero
	sumadsecund=0
	Para i=0 Hasta f-1 Hacer
		Para j=0 Hasta c-1 Hacer
			sumadsecund=sumadsecund+matriz[i, c-1-i]
		FinPara
	FinPara
FinSubProceso

//--------------------------------------------------------------------






