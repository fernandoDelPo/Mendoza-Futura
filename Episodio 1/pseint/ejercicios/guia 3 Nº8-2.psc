Algoritmo sin_titulo
	Definir notafinal, notaInt, notaInt1, suma, notaExp, notaExp1, notaparcial1, max, min, notaparcial, qalumnos, total, alumnos, contador, promedioneg, contador2, max1, min1, contador3, contador4, sumaInte, sumainte7, sumaParcial, sumaExp, mayornotaexp, legajo, contadoraprob, contadordesap Como Real
	Definir i, tp, expo, parc Como Entero
	Definir aux Como Logico
	
	i=0
	tp=0
	expo=0
	parc=0
	
	
	aux<-Verdadero
	suma=0
	sumaInte=0
	sumainte7=0
	sumaExp=0
	contador=0
	contador2=0
	contador3=0
	contador4=0
	contadoraprob=0
	contadordesap=0
	max=0
	Escribir "Ingrese la cantidad de alumnos"
	Leer qalumnos
	
	Para i<- 1 Hasta qalumnos Hacer
		contador=contador+1
		Escribir "Ingrese Nº Legajo alumno"
		Leer legajo
		para tp=1 hasta 1 Hacer
			Escribir "Ingrese la nota del TP. Integrador:"
			leer notaInt
			Si notaInt>10 Entonces
				Escribir "El valor ingresado es incorrecto"
				Leer notaInt
			FinSi
			contador2=contador2+1
			Si notaInt >= 7.5 Entonces
				sumainte7=sumainte7+notaInt
				contador4=contador4+1
			FinSi
			sumaInte=sumaInte+notaInt
		FinPara
		
		para expo=1 Hasta 1 Hacer
			Escribir "Ingrese la nota de la Exposición"
			Leer notaExp
			Si notaExp>10 Entonces
				Escribir "La nota ingresada es incorrecta"
				Leer notaExp
			FinSi
			Si notaExp<10 y notaExp >=0 Entonces
				
				Si notaExp > max Entonces
					max<-notaExp
				SiNo
					si notaExp < min y notaExp<>0 Entonces
						min<-notaExp 
					FinSi
				FinSi				
			FinSi
		FinPara
		
		para parc=1 Hasta 1 Hacer
			Escribir "Ingrese la nota del Parcial"
			Leer notaparcial
			si notaparcial>=4.0 y notaparcial<=7.5 Entonces
				contador3=contador3+1
			FinSi
		FinPara
		notafinal=(notaInt + notaExp + notaparcial) / 3
		Si notafinal >= 6.5 Entonces
			Escribir "El alumno ", legajo, " APROBO"
			contadoraprob=contadoraprob+1
		SiNo
			Escribir "El alumno ", legajo, " DESAPROBO"
			contadordesap=contadordesap+1
		FinSi
		
		
		
		
	FinPara
	
	
	Escribir "La cantidad de alumnos desaprobados es:", contadordesap
	Escribir "La mayor nota obtenida en las Exposiciones fue de: ", max
	Escribir "La cantidad de estudiantes que obtubieron una nota en el Parcial entre 4,0 y 7,5 es de: ", contador3
FinAlgoritmo
