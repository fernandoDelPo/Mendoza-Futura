	Algoritmo Max_Min_promedio
		
		//Escribir un programa que lea n�meros enteros hasta teclear 0 (cero). Al finalizar el
		//programa se debe mostrar el m�ximo n�mero ingresado, el m�nimo, y el promedio de todos ellos.
		
		Definir num, max, min, suma, promedio, contador Como Real;
		definir aux Como Logico
		suma=0
		contador=0
		aux<-Verdadero
		
	Hacer 
		Escribir "Ingrese un numero entero"
		leer num
		suma=suma+num
		contador=contador+1
		Si aux=verdadero Entonces
			max=num
			min=num
			aux=Falso
		SiNo
			si num > max Entonces
				max<-num
			SiNo
				si num < min y num<>0 Entonces
					min<-num 
				FinSi
			FinSi
					
		FinSi
			
				promedio= suma/contador
				
	Mientras Que  num<>0
			
			Escribir "El n�mero MAXIMO es: ", max
			Escribir "El n�mero MINIMO es: ", min
			Escribir "El promedio de los n�meros ingresados es: ", promedio
			
FinAlgoritmo
