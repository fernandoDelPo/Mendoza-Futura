Algoritmo sin_titulo
	Definir defec, produc, grado Como Entero
	Escribir "Ingrese la cantidad de tornillos defectuosos fabricados por el operario."
	Leer defec
	Escribir "Ingrese la cantidad de tornillos sin defectos fabricados por el operario."
	Leer produc
	
	Si produc > 10000 y defec < 200 Entonces
		grado = 8;
	SiNo
		si produc > 10000 y defec >= 200 Entonces
			grado = 7;
		SiNo
			si produc <= 10000 y defec <= 200 Entonces
				grado = 6;
			SiNo
				si produc <= 10000 y defec >= 200 Entonces
					grado = 5;
				FinSi
			FinSi
		FinSi
	FinSi
	Escribir "La eficiencia alcanzada por el operario es de GRADO:  ", grado ;
	
FinAlgoritmo
