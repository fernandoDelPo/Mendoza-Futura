Algoritmo Nota_1_A_10
	//Escriba un programa que valide si una nota está entre 0 y 10, sino está entre 0 y 10 la nota se pedirá d nuevo hasta_que la nota sea correcta.
	
	Definir nota como Entero
	
	Escribir "Ingrese una nota entre 1-10"
	Leer nota
	
	Mientras nota > 10 Hacer 
		
		Si nota > 10 Entonces
			Escribir "La nota ingresada es INCORRECTA"
			Escribir "Ingrese nuevamente la nota entre 1-10)"
			leer nota
			
		FinSi
	Fin Mientras
	
	Escribir "La nota ingresada es CORRECTA - MUCHAS GRACIAS"	
FinAlgoritmo
