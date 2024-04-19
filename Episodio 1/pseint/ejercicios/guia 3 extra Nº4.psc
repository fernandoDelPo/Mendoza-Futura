Algoritmo sin_titulo
	//Calcular las calificaciones de un grupo de alumnos. La nota final de cada alumno se
	//calcula según el siguiente criterio: la parte práctica vale el 10%; la parte de problemas
	//vale el 50% y la parte teórica el 40%. El programa leerá el nombre del alumno, las tres
	//notas obtenidas, mostrará el resultado por pantalla, y a continuación volverá a pedir los
	//datos del siguiente alumno hasta que el nombre sea una cadena vacía. Las notas deben
	//estar comprendidas entre 0 y 10, y si no están dentro de ese rango no se imprimirá el
	//promedio y se mostrará un mensaje de error.
	
	Definir notafinal, notapractica, notapractica1, notaproblemas, notaproblemas1, notateorica, notateorica1, min, max Como Real
	
	Definir cade, alumno como cadena
	cade=""
	min=0
	max=10
	alumno="*"
	Mientras alumno<>cade Hacer
		Escribir "Ingrese el nombre del alumno"
		Leer alumno
		si alumno<>cade Entonces
			Escribir "Ingrese la nota de la parte PRACTICA"
			Leer notapractica
			Escribir "Ingrese la nota de PROBLEMAS"
			Leer notaproblemas
			Escribir "Ingrese la nota de TEORIA"
			Leer notateorica
			notateorica1=(notateorica*40)/100
			notapractica1=(notapractica*10)/100
			notaproblemas1=(notaproblemas*50)/100
			notafinal=notapractica1+notateorica1+notaproblemas1
			SI notafinal>=0 y notafinal<=10 Entonces
				Escribir" EL alumno obtuvo una notafinal promedio de: ", notafinal, " sobre 10"
			SiNo
				Escribir "Error"
			FinSi
			
		SiNo
			Escribir "FIN"
			
			
			
			
			
			
		FinSi
			
		FinMientras
	
FinAlgoritmo
