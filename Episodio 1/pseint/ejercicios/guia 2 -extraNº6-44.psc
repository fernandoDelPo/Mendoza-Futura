Algoritmo sin_titulo
	
	
	definir dia, mes, anio Como real
	definir mes1, fecha Como caracter

	Escribir  "Ingrese el dia, mes y año que desea verificar."
	Leer dia, mes, anio;
	
	si anio >0 Entonces
		Escribir "El año ingresado es correcto.";
	SiNo
		Escribir "El año ingresado es incorrecto. ERROR";
	FinSi
	si (anio MOD 4=0 y anio MOD 100<>0) o (anio MOD 4=0 y anio MOD 400=0) Entonces
		Escribir "El año es bisiesto";
	SiNo
		Escribir "El año no es bisiesto.";
	FinSi
	
	
	Si mes >0 y mes <=12 Entonces
		Escribir "El mes es correcto.";
	SiNo
		Escribir "El mes es incorrecto. ERROR";
	FinSi
	
	
	Segun mes Hacer
		1 o 3 o 5 o 7 o 8 o 10 o 12:
			si dia >0 y dia <=31 Entonces
				Escribir "El día es correcto."
			SiNo
				Escribir "El día es incorrecto. ERROR"
			FinSi
		2:
			si (anio MOD 4=0 y anio MOD 100<>0) o (anio MOD 4=0 y anio MOD 400=0) Entonces
				si dia >0 y dia <=29 Entonces
					Escribir "El dia es correcto.";
				SiNo
					Escribir "El dia es incorrecto.";
				FinSi
			SiNo
				si dia >0 y dia <=28 Entonces
					Escribir "El día es correcto.";
				SiNo
					Escribir "El día es incorrecto. ERROR";
				FinSi
			FinSi
		4 o 6 o 9 o 11:
			si dia >0 y dia <=30 Entonces
				Escribir "El día es correcto.";
			SiNo
				Escribir "El día es incorrecto. ERROR";
				
			FinSi
	Fin Segun
	
	
	
	si mes = 1 Entonces
		Escribir dia, " de ENERO de  ", anio
	SiNo
		si mes = 2 entonces
			Escribir dia, " de FEBRERO de ", anio;
		SiNo
			si mes = 3 Entonces
				Escribir dia, " de MARZO de  ", anio;
			SiNo
				si mes = 4 Entonces
					Escribir dia, " de ABRIL de  ", anio;
				SiNo
					si mes = 5 Entonces
						Escribir  dia, " de MAYO de  ", anio;
					SiNo
						Si mes = 6 Entonces
							Escribir dia,   " de JUNIO de  ", anio;
						SiNo
							si mes =7 Entonces
								Escribir dia, " de JULIO de  ", anio;
							SiNo
								si mes = 8 Entonces
									Escribir dia, " de AGOSTO de  ", anio;
								SiNo
									si mes = 9 Entonces
										Escribir dia, " de SEPTIEMBRE de  ", anio;
									SiNo
										si mes = 10 Entonces
											Escribir dia, " de OCTUBRE de  ", anio;
										SiNo
											si mes = 11 Entonces
												Escribir dia, " de NOVIEMBRE de  ", anio;
											SiNo
												si mes = 12 Entonces
													Escribir dia, " de DICIEMBRE de  ", anio;
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	
	
	
	
	
	
	
	Escribir "La fecha ingresada es: ", dia, "/", mes, "/", anio
	
	

	
FinAlgoritmo
