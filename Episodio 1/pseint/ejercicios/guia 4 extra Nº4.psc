Algoritmo dia_anterior
	
	Definir dia, mes, anio Como Entero
	
	Escribir Sin Saltar "Ingresa el dia, mes y año:";
	Leer dia, mes, anio
	
	
	
	diaAnterior(dia, mes, anio)
	
	
FinAlgoritmo

Subproceso diaAnterior(dia, mes, anio)
	Definir dia_anterior, mes_anterior, anio_anterior como real 
	dia_anterior=0
	mes_anterior=0
	anio_anterior=0
	
	//dias
	si (dia = 1 y (mes=1 o mes=2 o mes=4 o mes=6 o mes=8 o mes=9 o mes=11)) Entonces
		dia_anterior = 31
	SiNo
		si dia = 1 y mes=3 y  (anio MOD 4 = 0 y ((anio MOD 100 <> 0) o (anio MOD 400 = 0)))
			dia_anterior = 28
		SiNo
			si dia = 1 y mes=3 
				dia_anterior= 29
			SiNo
				si dia = 1 y (mes=5 o mes=7 o mes=10) Entonces
					dia_anterior = 30
				SiNo
					dia_anterior=dia-1
				FinSi
			FinSi
		FinSi
	FinSi
	
	
	//meses
	
	si (dia = 1 y (mes=2 o mes=3 o mes=4 o mes=5 o mes=6 o mes=7 o mes=8 o mes=9 o mes=10 o mes=11 o mes=12)) Entonces
		mes_anterior = mes-1
	SiNo
		si dia = 1 y mes=1 Entonces
			mes_anterior=mes+11
		SiNo
			mes_anterior=mes
		FinSi
	FinSi
	
	
	//año
	SI dia=1 y mes=1 Entonces
		anio_anterior=anio-1
	SiNo
		anio_anterior=anio
	FinSi
	
	Si (dia>31 o dia<1) o (mes>12 o mes<1) o (anio<1) Entonces
		Escribir "La fecha ingresada es incorrecta"
	FinSi
	
	
	Escribir sin saltar "El día anterior al ingresado es: ", dia_anterior,"/", mes_anterior, "/", anio_anterior;
	Escribir ""
FinSubProceso

