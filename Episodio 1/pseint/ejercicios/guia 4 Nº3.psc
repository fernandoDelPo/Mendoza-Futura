Algoritmo sin_titulo
	
	
	Definir dividendo1, divisor, contador, residuo Como Real
	Escribir "Ingrese el DIVIDENDO"
	Leer dividendo1
	Escribir "Ingrese el DIVISOR"
	Leer divisor
	contador=0
	residuo=0
	Hacer
		
		dividiendo(dividendo1, divisor, residuo)
		contador=contador+1
		Escribir dividendo1, "-", divisor " = " , residuo, " ", contador, "restas"
		dividendo1=residuo
	Mientras que residuo>=divisor
	
	
	
	
FinAlgoritmo

SubProceso dividiendo (dividendo1 Por Referencia, divisor, residuo Por Referencia)
	residuo=dividendo1-divisor
	
FinSubProceso
