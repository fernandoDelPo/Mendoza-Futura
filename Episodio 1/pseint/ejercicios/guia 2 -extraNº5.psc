Algoritmo dias_de_la_semana
	
	Definir a, dia Como Caracter
	Escribir "Ingrese un número del 1 al 7 para determinar a que día de la semana hace referencia."
	leer a
	
	Si a = "1" Entonces
		dia = "LUNES"
	SiNo
		si a = "2" Entonces
			dia = "MARTES";
		SiNo
			si a = "3" Entonces
				dia = "MIERCOLES";
			SiNo
				si a = "4" Entonces
					dia = "MIERCOLES";
				SiNo
					si a = "5" Entonces
						dia = "JUEVES";
					SiNo
						si a = "6" Entonces
							dia = "VIERNES";
						SiNo
							si a = "7" Entonces
								dia = "SABADO";
							SiNo
								Si a = "7" Entonces
									dia = "DOMINGO"
								SiNo
									dia = "La opción ingresada es incorrecta";
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	Escribir dia

	
FinAlgoritmo
