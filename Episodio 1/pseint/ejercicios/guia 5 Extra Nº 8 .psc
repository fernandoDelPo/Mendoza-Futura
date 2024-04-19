Algoritmo sin_titulo
	Definir num Como Entero
	Definir capi Como Logico
	Escribir "Ingrese un número"
	Leer num
	
	capi=capicua(num)
	
	Si capi= Verdadero
		Escribir capi, " Es capicúa"
	SiNo
		Si capi=Falso
			Escribir capi, " No es capiúa"
		FinSi
	FinSi
	
	
FinAlgoritmo

Funcion capi2=capicua(num)
	Definir capi2 Como Logico
	Definir aux, numeroNuevo, residuo Como Entero
	aux=num
	numeroNuevo=0
	residuo=0
	
	Mientras aux>0 Hacer
		residuo=aux MOD 10
		numeroNuevo=(numeroNuevo*10)+residuo
		aux=TRUNC (aux/10)
	FinMientras
	
	Si num=numeroNuevo Entonces
		capi2=Verdadero 
		
	SiNo
		capi2=Falso
		
	FinSi
	
FinFuncion
