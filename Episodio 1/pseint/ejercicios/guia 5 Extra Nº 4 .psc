Algoritmo sin_titulo
	//Los empleados de una fábrica trabajan en dos turnos: Diurno y Nocturno. Se desea
	//calcular el jornal diario de acuerdo con las siguientes reglas:
	///a) La tarifa de las horas diurnas es de $ 90
	////b) La tarifa de las horas nocturnas es de $ 125
	////c) En caso de ser feriado, la tarifa se incrementa en un 10% si el turno es diurno y
	///en un 15% si el turno es nocturno.
	//El programa debe solicitar la siguiente información al usuario: el nombre del
	//trabajador, el día de la semana, el turno (diurno o nocturno) y la cantidad de horas
	//trabajadas. Además, debemos preguntarle al usuario si el día de la semana (lunes,
	//martes, miércoles, etc.) era festivo o no, para poder calcular el jornal diario. Utilice
	//una función para realizar el cálculo.
	
	Definir nombre, dia, turno, feriado como caracter
	Definir jornaltotal, horas Como Real
	
	Escribir "                      Ingrese el nombre del trabajador                                         "
	Leer nombre
	
	Escribir "                         Digite el día trabajado                                               "
	Escribir "(L) Lunes / (M) Martes / (MIE) Miércoles / (J) Jueves / (V) Viernes / (S) Sábado / (D) Domingo "
	Leer dia
	Escribir "                     ¿El día ingresado era feriado o festivo?                                  "
	Escribir "                              Digite (SI) o (NO)                                               "
	Escribir ""
	Leer feriado
	Escribir "                                                                                               "
	Escribir "                         Ingrese el turno trabajado                                            "
	Escribir "                    Digite (D) turno diurno o (N) turno nocturno                               "
	Escribir ""
	Leer  turno
	Escribir "                      Ingrese la cantidad de horas trabajadas                                  "
	Escribir ""
	leer horas
	
	jornaltotal= determinarjornal(nombre, dia, feriado, turno, horas)
	Escribir "El jornal correspondiente es de $ ", jornaltotal
	
FinAlgoritmo
Funcion jornal = determinarjornal(nombre, dia, feriado, turno, horas)
	
	Definir jornal, preciohoradiurna, preciohoranocturna Como Real
	
	dia=Mayusculas(dia)
	feriado=Mayusculas(feriado)
	turno=Mayusculas(turno)
	
	preciohoradiurna=90
	preciohoranocturna=125
	
	Si (dia = "L" o dia="M" o dia="MIE" o dia="J" o dia="V" o dia="S" o dia="D") y turno="D" y feriado="NO" Entonces
		jornal=preciohoradiurna*horas
	Sino
		si (dia = "L" o dia="M" o dia="MIE" o dia="J" o dia="V" o dia="S" o dia="D") y turno="N" y feriado="NO" Entonces
			
			jornal=preciohoranocturna*horas
		Sino 
			si (dia = "L" o dia="M" o dia="MIE" o dia="J" o dia="V" o dia="S" o dia="D") y turno="D" y feriado="SI" Entonces
				jornal= ((preciohoradiurna/10)*horas) + preciohoradiurna*horas
			SiNo
				si (dia = "L" o dia="M" o dia="MIE" o dia="J" o dia="V" o dia="S" o dia="D") y turno="N" y feriado="SI" Entonces
					
					jornal= ((preciohoranocturna/15)*horas) + preciohoranocturna*horas
				SiNo
					Escribir "Todos o alguno de los datos son incorrectos"
				FinSi
				
			FinSi
		FinSi
		
		
		
	FinSi
	
	
	
	
FinFuncion
