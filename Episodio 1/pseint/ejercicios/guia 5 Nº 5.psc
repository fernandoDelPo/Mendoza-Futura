Algoritmo sin_titulo
	//Realizar una funci�n que reciba un numero ingresado por el usuario y averig�e si el
	//numero es primo o no. Un n�mero es primo cuando es divisible s�lo por 1 y por s�
	//mismo, por ejemplo: 2, 3, 5, 7, 11, 13, 17, etc. Nota: recordar el uso del MOD.
	
	Definir num Como Real
	Definir a Como Logico
	Escribir "Ingrese un n�mero."
	Leer num
	Escribir "�El n�mero ingresado es un n�mero PRIMO?"
	a = numprimo(num)
	
	
	Si a = Verdadero Entonces
		Escribir a," ", num, " Es un n�mero primo"
	SiNo
		Escribir a," ", num, " No es un n�mero primo"
	FinSi
	
	
	
FinAlgoritmo

Funcion b = numprimo(num1)
	Definir b Como Logico
	Definir i, contador Como Entero
	i=1
	contador=0
	
	Para i<-1 Hasta num1 Hacer
		Si num1 MOD i = 0 Entonces
			contador=contador+1
		FinSi
	FinPara
	
	Si contador=2 Entonces
		b<-Verdadero
	SiNo
		b<-Falso
	FinSi
	
	
FinFuncion