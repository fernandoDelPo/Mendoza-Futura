Algoritmo sin_titulo
	//Realizar una función que valide si un numero es impar o no. Si es impar la función debe
	//devolver un verdadero, si no es impar debe devolver falso. Nota: la función no debe
	//tener mensajes que digan si es par o no, eso debe pasar en el Algoritmo.	
	
	Definir num Como Real
	Definir a Como Logico
	
	Escribir "Ingresa un número."
	Leer num
	
	a=parOimpar(num)
	Escribir "¿El número ingresado es PAR?"
	Si a=Verdadero Entonces
		Escribir a, " es par" 
	SiNo
		Escribir a, " es impar"
	FinSi
	
FinAlgoritmo

Funcion b = parOimpar(num1)
	Definir b Como Logico
	
	Si num1 MOD 2=0 Entonces
		b<-Verdadero
	SiNo
		b<-Falso
	FinSi
	
FinFuncion
