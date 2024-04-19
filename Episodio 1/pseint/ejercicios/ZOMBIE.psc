Algoritmo MuestraZombie
	Definir muestra, matriz como cadena
	Definir largo, ra Como Entero
	Definir a, b Como Logico
	Escribir "Ingrese la muestra que desea analizar (letras A,B,C o D)"
	Leer muestra
	b=verificarletras(muestra)
	Si b=verdadero Entonces
		Escribir "La muestra es válida - Todos sus valores se encuentran entre (A-B-C-D)"
	SiNo
		Si a=Falso Entonces
			Escribir "La muestra no es compatible - Valores fuera de Rango (A-B-C-D) " //(No da una raiz cuadrada con numeros enteros)
		FinSi
	FinSi
	a=longituddemuestra(muestra)
	Si a=verdadero Entonces
		Escribir "La muestra es válida para su examen"
	SiNo
		Si a=Falso Entonces
			Escribir "La muestra no es compatible " //(No da una raiz cuadrada con numeros enteros)
		FinSi
	FinSi
	largo=Longitud(muestra)
	ra=RC(largo)
	Dimension matriz[ra,ra]
	llenarmatriz(matriz, muestra, largo, ra)
FinAlgoritmo

//---Verificarletras A B C D ---------------------------------------------------------
Funcion b=verificarletras(muestra)
	Definir b Como Logico
	Definir largo, i Como Entero
	largo = Longitud(muestra)
	muestra=Mayusculas(muestra)
	Para i=0 hasta largo-1 Hacer
		Si Subcadena(muestra, i, i) = 'A' o Subcadena(muestra, i, i) = 'B' o Subcadena(muestra, i, i) = 'C' o Subcadena(muestra, i, i) = 'D' Entonces
			b=Verdadero
		SiNo
			b=falso			
		FinSi
	FinPara
	
FinFuncion

//-Longuitud-raizcuadrada-exacta------------------------------------------------------
Funcion b=longituddemuestra(muestra)
	Definir largo, raizcuadrada, resul, ent, a Como Real
	Definir b Como Logico
	largo=Longitud(muestra)
	raizcuadrada=RC(largo)
	ent=raizcuadrada
	a=trunc(ent) 
	Si a = raizcuadrada Entonces
		b=Verdadero
	Sino 
		b=falso	
	FinSi
FinSubProceso

//--------------------------------------------------------------------------------------
SubProceso llenarmatriz(matriz, muestra, largo, ra)
	Definir i, j, contador Como Entero
	contador=0
	Para i=0 Hasta ra-1 Hacer
		Para j=0 Hasta ra-1 Hacer
			matriz[i,j] = Subcadena(muestra, contador, contador)
			contador=contador+1
			Escribir Sin Saltar " [", matriz[i,j], "] "
		FinPara
		salto()
	FinPara
	
	
FinSubProceso
SubProceso salto()
	Escribir ""
FinSubProceso
	