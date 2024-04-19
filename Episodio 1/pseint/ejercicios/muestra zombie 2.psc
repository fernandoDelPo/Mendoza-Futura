Algoritmo MuestraZombie
	Definir muestra, matriz como cadena
	Definir largo, ra, m Como Entero
	Definir a, b, c Como Logico
	Escribir "Ingrese la muestra que desea analizar (letras A,B,C o D)"
	Leer muestra
	b=verificarletras(muestra)
	Si b=verdadero Entonces
		Escribir "La muestra es válida - Todos sus valores se encuentran entre (A-B-C-D)"
	SiNo
		Si b=Falso Entonces
			Escribir "La muestra no es compatible - Valores fuera de Rango (A-B-C-D) " //(No da una raiz cuadrada con numeros enteros)
		FinSi
	FinSi
	
	a=longituddemuestra(muestra)
	
	Si a=verdadero Entonces
		Escribir "La SECUENCIA es válida para su examen - LOADING MATRIZ - "
	SiNo
		Si a=Falso Entonces
			Escribir "La SECUENCIA no es compatible " //(No da una raiz cuadrada con numeros enteros)
		FinSi
	FinSi
	largo=Longitud(muestra)
	ra=RC(largo)
	Dimension matriz[ra,ra]
	llenarmatriz(matriz, muestra, largo, ra)
	
	c=detectargen(matriz, muestra, largo, ra)
	salto()
	Si c=Verdadero Entonces
		Escribir "¡GEN DETECTADO! - PRUEBA EXITOSA"
		m=imprimirmatriz[matriz, ra]  
	SiNo
		si c=falso  Entonces
		Escribir "La muestra no contiene el GEN buscado"
	FinSi
	salto()
	Finsi
FinAlgoritmo

//---Verificarletras A B C D ---------------------------------------------------------
Funcion b=verificarletras(muestra)
	Definir b Como Logico
	Definir largo, i, contador Como Entero
	largo = Longitud(muestra)
	muestra=Mayusculas(muestra)
	contador=0
	b=falso
	Para i=0 hasta largo-1 Hacer
		Si Subcadena(muestra, i, i) = 'A' o Subcadena(muestra, i, i) = 'B' o Subcadena(muestra, i, i) = 'C' o Subcadena(muestra, i, i) = 'D' Entonces
			contador=contador+1
		SiNo
			contador=contador	
		FinSi
	FinPara
	Si contador=largo Entonces
		b=Verdadero
	SiNo
		b=Falso
	FinSi
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

//----LLENAR----------------------------------------------------------------------------------
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
	salto()
FinSubProceso

//---VERIFICAR GEN------------------------------------------------------------------------
	Funcion c=detectargen(matriz, muestra, largo, ra)
		Definir c Como Logico
		Definir i, j, contador Como Entero
		Definir vector1, vector2 como cadena
		Dimension vector1[ra]
		Dimension vector2[ra]
		
		Escribir "SUB-GEN #1"
		Para i=0 hasta ra-1 Hacer
			Para j=0 Hasta ra-1 Hacer
				Si i=j Entonces
					vector1[i]=matriz[i,j]
					Escribir sin saltar " [", vector1[i], "] "
				FinSi
			FinPara
		FinPara
		salto()
		Escribir "SUB-GEN #2"
		Para i=0 hasta ra-1 Hacer
			Para j=0 Hasta ra-1 Hacer
				Si i+j=ra-1 Entonces
					vector2[i]=matriz[i,j]
					Escribir sin saltar " [", vector2[i], "] "
				FinSi
			FinPara
		FinPara
		salto()
		
		contador=0
			Para i=0 hasta ra-1 Hacer
				Si vector1[i] = vector2[i] Entonces
					contador=contador+1
				Sino 
					contador=contador
				FinSi
			FinPara
			Si contador=ra Entonces
				c=Verdadero
			SiNo
				c= Falso
			FinSi
FinFuncion
	
//---IMPRIMIR MATRIZ---------------------------------------------------------------------
Funcion m=imprimirmatriz[matriz, ra]  
	Definir m, i, j Como Entero
	Para i=0 hasta ra-1 Hacer
		Para j=0 hasta ra-1 Hacer
			Escribir sin saltar " [", matriz[i,j], "] "
		FinPara
		salto()
	FinPara
	salto()
FinFuncion
		
//----SALTO----------------------------------------------------------------------------------
	
SubProceso salto()
	Escribir ""
FinSubProceso

	