Algoritmo combinarnum
	//El número de combinaciones de m elementos tomados de n es:
	//(!" ) = ( !!
	//"!(!%")!)
	//Diseñar una función que permita calcular el número combinatorio de (m / n)
	
	Definir a Como real
	Definir num, m Como Real
	Escribir "Ingrese un número (m) de elementos para combinar"
	Leer m
	Escribir "Ingrese un número (n) de elementos a combinar (debe ser menor que (m)"
	Leer num
	
	a=combinarnumeros(num, m)
	Escribir "El número combinatorio de " m, "/", num, " (m/n) es = ", a
	
	
FinAlgoritmo
Funcion c=combinarnumeros(num, m)
Definir c Como real
Definir i, j, k, fn, fm, fmn, mn Como Real
i=1
j=1
k=1
mn=m-num
fn=1
fm=1
fmn=1
Para i=1 hasta num Hacer
	fn=fn*i
FinPara

Para j=1 hasta m Hacer
	fm=fm*j
FinPara

Para k=1 hasta mn Hacer
	fmn=fmn*k
FinPara

c=fm/(fn * fmn)

FinFuncion


