Algoritmo sin_titulo
	Definir nota1, nota2, nota3, nota4, promedio Como real
	Escribir "Ingrese las 4 notas a promediar (Nota: los valos van del 1 al 10)."
		
	
	Leer nota1, nota2, nota3, nota4;
	
	si nota1 >=0 y nota1 <=10 Entonces
		Escribir "Datos correctos"
	SiNo
		Escribir "Los datos ingresados son incorrectos"
	FinSi
	
	si nota2 >=0 y nota2 <=10 Entonces
		Escribir "Datos correctos"
	SiNo
		Escribir "Los datos ingresados son incorrectos"
	FinSi
	
	si nota3 >=0 y nota3 <=10 Entonces
		Escribir "Datos correctos"
	SiNo
		Escribir "Los datos ingresados son incorrectos"
	FinSi
	
	si nota4 >=0 y nota4 <=10 Entonces
		Escribir "Datos correctos"
	SiNo
		Escribir "Los datos ingresados son incorrectos"
		
	FinSi
	
	
	Si nota1 < nota2 y nota1 < nota3 y nota1 < nota4 Entonces
		promedio = (nota2+nota3+nota4) /3
		Escribir "El promedio obtenido es de:  ", promedio, " Se eliminó la nota ", nota1;
	SiNo
		si nota2 < nota1 y nota2 < nota3 y nota2 < nota4 Entonces
			promedio = (nota1+nota3+nota4) /3
			Escribir "El promedio obtenido es de:  ", promedio, " Se eliminó la nota ", nota2;
		SiNo
			si nota3 < nota2 y nota3 < nota1 y nota3 < nota4 Entonces
			promedio = (nota2+nota1+nota4) /3
			Escribir "El promedio obtenido es de:  ", promedio, " Se eliminó la nota ", nota3;
		SiNo
			si nota4 < nota2 y nota4 < nota3 y nota4 < nota1 Entonces
				promedio = (nota2+nota3+nota1) /3
				Escribir "El promedio obtenido es de:  ", promedio, " Se eliminó la nota ", nota4;
			finsi
		FinSi
		
	FinSi
FinSi


	
	
	
FinAlgoritmo
