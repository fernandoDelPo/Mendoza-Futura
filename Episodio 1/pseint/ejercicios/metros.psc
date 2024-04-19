Algoritmo ConversorMetro
	
	Definir metro Como Real
	metro = 0
	Definir cm, mm, pulgadas Como Real
	cm = 0
	mm = 0
	pulgadas = 0
	
	
	Escribir "Ingrese el valor en metros que desea convertir"
	Leer metro
	
	cm = metro * 100
	mm = metro * 1000 
	pulgadas = cm / 2.54
	
	Escribir metro " Metros es igual a:", cm, " centímetros."
	Escribir metro " Metros es igual a:", mm, " milímetros."
	Escribir metro " Metros es igual a;", pulgadas, " pulgadas."
	
FinAlgoritmo
