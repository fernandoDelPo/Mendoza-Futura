Algoritmo Alquiler_auto
	Definir hora, minutos, litros, total1, total2 Como Real
	Escribir "Ingrese la cantidad de horas de alquiler del vehículo.";
	Leer hora;
	Escribir "Ingrese la cantidad de litros consumidos."
	Leer litros
	
	minutos=hora*60
	
	Si minutos > 120 Entonces
		total1=(litros*40) + (minutos * 5.20)
		Escribir "La tarifa total es de: $   ", total1;
	SiNo
		total2=400
		Escribir "La tarifa total es de: $   ", total2;
	FinSi
	
FinAlgoritmo
