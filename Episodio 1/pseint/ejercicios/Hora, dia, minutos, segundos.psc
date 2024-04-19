Algoritmo Dias_horas_minutos_segundos
	Definir dias, horas, minutos, segund Como Entero;
	
	Escribir "Ingresa la cantidad de días que deseas convertir.";
	Leer dias;
	
	horas = dias * 24;
	minutos = (dias * 24) * 60
	segund = (dias * 24) * (60 * 60)
	
	Escribir "El/los días ingresados representan ", horas , " hs.,", minutos , " minutos y ", segund , " segundos.";
FinAlgoritmo
