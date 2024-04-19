Algoritmo sin_titulo
	
	
	
	Escribir Sin Saltar "Ingresa el valor de anno:";
    Leer anno;
    Escribir Sin Saltar "Ingresa el valor de dia:";
    Leer dia;
    Escribir Sin Saltar "Ingresa el valor de mes:";
    Leer mes;
	
	
	//dias
	si (dia = 1 y (mes=1 o mes=2 o mes=4 o mes=6 o mes=8 o mes=9 o mes=11)) Entonces
		dia_anterior = 31
	SiNo
		si dia = 1 y mes=3 y  (anio MOD 4 <> 0 O anio MOD 100 = 0)
			dia_anterior = 28
		SiNo
			si dia = 1 y mes=3 y anio MOD 400 <> 0
				dia_anterior = 29
			SiNo
				si dia = 1 y (mes=5 o mes=7 o mes=10) Entonces
					dia_anterior = 30
				FinSi
			FinSi
		FinSi
	FinSi
	
	
	//meses
	
	si (dia = 1 y (mes=2 o mes=3 o mes=4 o mes=5 o mes=6 o mes=7 o mes=8 o mes=9 o mes10 o mes=11 o mes=12)) Entonces
		mes_anterior = mes-1
	SiNo
		si dia = 1 y mes=1 Entonces
			mes_anterior=mes+11
		FinSi
	FinSi
	
	
	//año
	SI dia=1 y mes=1 Entonces
		anio=anio-1
	SiNo
		anio=anio
	FinSi
	
	
	
    Si (dia = 30 Y (mes = 4 O mes = 6 O mes = 9 O mes = 11)) O dia = 31 O (mes = 2 Y (dia = 29 O (dia = 28 Y (anno MOD 4 <> 0 O anno MOD 100 = 0) Y anno MOD 400 <> 0))) Entonces
        dia_siguiente <- 1;
        mes_siguiente <- mes+1;
    SiNo
        dia_siguiente <- dia+1;
        mes_siguiente <- mes;
    FinSi
    Si mes_siguiente = 13 Entonces
        anno_siguiente <- anno+1;
        mes_siguiente <- 1;
    SiNo
        anno_siguiente <- anno;
    FinSi
    Si dia<1 O dia>31 O (mes = 2 Y dia>29) O ((mes = 4 O mes = 6 O mes = 9 O mes = 11) Y dia = 31) O (mes = 2 Y dia = 29 Y (anno MOD 4 <> 0 O anno MOD 100 = 0) Y anno MOD 400 <> 0) Entonces
        dia_siguiente <- 0;
        mes_siguiente <- 0;
        anno_siguiente <- 0;
        Escribir "Día incorrecto";
    FinSi
    Si mes<1 O mes>12 Entonces
        dia_siguiente <- 0;
        mes_siguiente <- 0;
        anno_siguiente <- 0;
        Escribir "Mes incorrecto";
    FinSi
    Si anno<1000 O anno>=10000 Entonces
        dia_siguiente <- 0;
        mes_siguiente <- 0;
        anno_siguiente <- 0;
        Escribir "Año incorrecto";
    FinSi
    Escribir "Valor de anno siguiente: ", anno_siguiente;
    Escribir "Valor de dia siguiente: ", dia_siguiente;
    Escribir "Valor de mes siguiente: ", mes_siguiente;
	
	
	
FinAlgoritmo
