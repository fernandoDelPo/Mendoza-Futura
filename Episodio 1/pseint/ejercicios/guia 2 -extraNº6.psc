Algoritmo dd_mm_aa
	definir dia, mes, anio Como Entero
	definir mes1, fecha Como Caracter
	Escribir  "Ingrese el año que desea verificar."
	Leer anio
	
	si anio >0 Entonces
		Escribir "El año ingresado es correcto.";
	SiNo
		Escribir "El año ingresado es incorrecto.";
	FinSi
	si (anio MOD 4=0 y anio MOD 100<>0) o (anio MOD 4=0 y anio MOD 400=0) Entonces
		Escribir "El año es bisiesto";
	SiNo
		Escribir "El año no es bisiesto.";
	FinSi
	
	
	Escribir "Ingrese el numero de mes que desea verificar"
	leer mes
	
	Si mes >0 y mes <=12 Entonces
		Escribir "El mes es correcto.";
	SiNo
		Escribir "El mes es incorrecto.";
	FinSi
	
	si mes = 1 Entonces
		mes1 = " de ENERO de "
	SiNo
		si mes = 2 entonces
			mes1 = " de FEBRERO de ";
		SiNo
			si mes = 3 Entonces
				mes1 = " de MARZO de  ";
			SiNo
				si mes = 4 Entonces
					mes1=" de ABRIL de  ";
				SiNo
					si mes = 5 Entonces
						mes1 = " de MAYO de  ";
					SiNo
						Si mes = 6 Entonces
							mes1= " de JUNIO de  ";
						SiNo
							si mes =7 Entonces
								mes1= " de JULIO de  ";
							SiNo
								si mes = 8 Entonces
									mes1 = " de AGOSTO de  ";
								SiNo
									si mes = 9 Entonces
										mes1= " de SEPTIEMBRE de  ";
									SiNo
										si mes = 10 Entonces
											mes1= " de OCTUBRE de  ";
										SiNo
											si mes = 11 Entonces
												mes1= " de NOVIEMBRE de  ";
											SiNo
												si mes = 12 Entonces
													mes1 = " de DICIEMBRE de  ";
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
	
	
	Escribir "Ingrese el número de día que desea verificar";
	Leer dia
	Segun mes Hacer
		1 o 3 o 5 o 7 o 8 o 10 o 12:
			si dia >0 y dia <=31 Entonces
				Escribir "El día es correcto."
			SiNo
				Escribir "El día es incorrecto."
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
					Escribir "El día es incorrecto.";
				FinSi
			FinSi
		4 o 6 o 9 o 11:
			si dia >0 y dia <=30 Entonces
				Escribir "El día es correcto.";
			SiNo
				Escribir "El día es incorrecto.";
				
			FinSi
	Fin Segun
	
	
	
	
	Escribir "La fecha ingresada es: ", dia, mes1, anio
	
	
FinAlgoritmo
