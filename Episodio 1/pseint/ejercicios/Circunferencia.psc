Algoritmo Circunferencia
	
	Definir numPI Como Real;	
	Definir radio, area, perimetro Como Real
	numPI = 3.1416
	radio = 0
	area = 0
	perimetro = 0
	
	Escribir "Ingrese el valor del radio de la circunsferencia expresado en centímetros"
	
	Leer radio
	
	area = numPI * (radio * radio)
	perimetro = 2 * numPI * radio
	
	Escribir "El área de la circunsferencia es  ", area, "cm²."
	Escribir  "El perímetro de la circunsferencia es ", perimetro, "cm."
	
	Escribir "Que tenga un lindo día!"
FinAlgoritmo
