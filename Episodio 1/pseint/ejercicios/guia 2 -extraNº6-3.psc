Algoritmo sin_titulo
	Definir dia, mes, anio como entero
	Definir dia1, mes1, anio1 Como Caracter
	Definir  fecha Como Caracter
	Escribir "Ingrese el día, mes y año en números"
	Leer dia, mes, anio
	
	si anio >0 y ((anio MOD 4=0 y anio MOD 100<>0) o (anio MOD 4=0 y anio MOD 400=0)) y (mes >0 y mes <=12) y (dia >0 y dia <=31) o ((anio MOD 4=0 y anio MOD 100<>0) y dia >0 y dia <=29) o ((anio MOD 4=0 y anio MOD 400=0) y dia >0 y dia <=28) o (dia >0 y dia <=30) Entonces
		fecha= " Fecha Válida"
		Escribir  "La fecha ingresada es VALIDA";
	SiNo
		fecha = " Fecha Inválida"
		Escribir  "La fecha ingresada es INVALIDA";
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
	
	
	
	
	
	Escribir "La fecha ingresada es: *** ", dia, mes1, anio, " ***", "¡¡¡",fecha, "!!!";
	
	si (anio MOD 4=0 y anio MOD 100<>0) o (anio MOD 4=0 y anio MOD 400=0) Entonces
		Escribir "El año es bisiesto"
	SiNo
		Escribir "El año no es bisiesto"
	FinSi
	
	
FinAlgoritmo
