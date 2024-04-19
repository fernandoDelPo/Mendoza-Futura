Algoritmo sin_titulo
	Definir fila1, fila2, col1, col2, i, j, masCercano Como Entero
	Escribir "Ingresa el número de FILA (1 a 20)"
	leer fila1
	Escribir "Ingresa el número de COLUMNA (1 a 20)"
	leer col1
	Escribir "Ingresa el número de FILA (1 a 20)"
	leer fila2
	Escribir "Ingresa el número de COLUMNA (1 a 20)"
	leer col2
	
	Si ( muroCercano(fila1, col1) = muroCercano(fila2, col2)) Entonces
		masCercano = muroCercano(fila1, col1)
	SiNo
		masCercano = muroCercano(fila2, col2)
	FinSi
	
	Escribir "El muro más cercano está a: ", masCercano, " metros."
	
	Para i=0 hasta 20-1 Hacer
		Para j=0 hasta 20-1 Hacer
			Si ((fila1 = i y col1 = j) o (fila2 = i y col2 = j)) Entonces
				Escribir "X"
			SiNo
				Escribir "-"
			FinSi
		FinPara
	FinPara
	
FinAlgoritmo
Funcion ret=muroCercano(fila, col)
	Definir ret, mf1, mf2, mc1, mc2, mfila, mcol Como Entero
	mf1 = abs(fila - 0)
	mf2 = abs((20-1) - fila)
	mc1 = abs( col - 0)
	mc2 = abs((20-1)-col)
	
	Si (mf1 = mf2) Entonces
		mfila=mf1
	SiNo
		mfila = mf2
	FinSi
	
	Si (mc1 = mc2) Entonces
		mcol = mc1
	SiNo
		mcol = mc2
	FinSi
	Si (mfila = mcol) Entonces
		ret = mfila
	SiNo
		ret = mcol
	FinSi
FinFuncion
	