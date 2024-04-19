Algoritmo sin_titulo
	
		//Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas)
		//que tiene como propiedad especial que la suma de las filas, las columnas y las
		//diagonales es igual. Por ejemplo:
		// 2 7 6
		// 9 5 1
		// 4 3 8
		//En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir
		//un algoritmo que compruebe si una matriz de datos enteros es mágica o no, y en caso
		//de que sea mágica escribir la suma. Además, el programa deberá comprobar que los
		//números introducidos son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el
		//tamaño de la matriz que no debe superar orden igual a 10.
		Definir matriz, f, c Como Entero
		Escribir "Ingrese el tamaño de la matriz cuadrada, la cual no debe superar el orden 10. Máximo [10,10]"
		Leer f, c
		Escribir ""
		Si f>10 o c>10 Entonces
			Escribir "Números incorrectos: El tamaño de la Matriz supera el orden 10"
		SiNo
			Dimension matriz[f,c]
			llenarmatriz(matriz, f, c)
			sumadiagonalprincipal(matriz, f, c)
		FinSi
		
		
		
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
	
	Definir sumadsecund Como Entero
	sumadsecund=0
	j=c-1
	Para i=0 Hasta f-1 Hacer
		sumadsecund=sumadsecund+matriz[i, j]
		j=j-1
	FinPara
	
	Si sumadprincipal=sumadsecund Entonces
		sumafilas(matriz, f, c, sumadprincipal)
	Sino 
		Escribir "No es una MATRIZ MAGICA"
	FinSi
	
FinSubProceso

//--------------------------------------------------------------------
SubProceso sumafilas(matriz, f, c, sumadprincipal)
	Definir i, j, sumafila, sumacol Como Entero
	Definir a, b Como Logico
	a=Verdadero
	b=Verdadero
	
	
		Para i=0 hasta f-1 Hacer
			sumafila=0
			Para j=0 hasta c-1 Hacer
				sumafila=sumafila+matriz[i,j]
			FinPara
			Si sumafila=sumadprincipal Entonces
				a=Verdadero
			Sino a=Falso
			FinSi
		FinPara
	
		Para i=0 hasta c-1 Hacer
			sumacol=0
			Para j=0 hasta f-1 Hacer
				sumacol=sumacol+matriz[j,i]
			FinPara
			Si sumacol=sumadprincipal Entonces
				b=Verdadero
			Sino b=Falso
			FinSi
		FinPara
	
	Si a=verdadero y b=Verdadero Entonces
		Escribir "La suma de las filas, columnas y diagonales es =", sumadprincipal
		Escribir "Es una MATRIZ MAGICA"
	SiNo
		Escribir "No es una MATRIZ MAGICA"
		
	FinSi
	
	
FinSubProceso




