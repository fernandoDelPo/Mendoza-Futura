Algoritmo Promedio_Notas
	Definir nota1, nota2, nota3, promedio Como Real;
	Definir resultado Como Caracter;
	Escribir  "Ingrese las 3 notas obtenidas."
	Leer nota1, nota2, nota3;
	
	promedio = (nota1 + nota2 + nota3) /3
	
	Si promedio >= 70 Entonces
		resultado = " *** APROBADO ***"
	SiNo
		resultado = " *** DESAPROBADO ***"
	FinSi
	Escribir "Usted ha obtenido un promedio de:  ", promedio, resultado;
	
FinAlgoritmo
