Algoritmo sin_titulo
	//Crear un vector que contenga 100 notas de 100 supuestos estudiantes, con valores entre
	//0 y 20 generadas aleatoriamente mediante el uso de la función azar() o aleatorio() de
	//PseInt. Luego, de acuerdo a las notas contenidas, el programa debe indicar cuántos
	//estudiantes son:
			//a) Deficientes 0-5
			//b) Regulares 6-10
			//c) Buenos 11-15
			//d) Excelentes 16-20
	
	
	Definir vector, i, sumadef, sumareg, sumabuenos, sumaexcelente Como Real
	i=0
	sumadef=0
	sumareg=0
	sumabuenos=0
	sumaexcelente=0
	Dimension vector(100)
	Para i=0 Hasta 100-1 Hacer
		vector(i)=Aleatorio(0,20)
	FinPara
	
	Para i=0 Hasta 100-1 Hacer
		
		Si vector(i) <=5 Entonces
			sumadef=sumadef+1
		Sino 
			Si vector(i) >5 y vector(i) <=10 Entonces
				sumareg=sumareg+1
			SiNo
				si vector(i) >10 y vector(i) <=15 Entonces
					sumabuenos=sumabuenos+1
				SiNo
					si vector(i) >15 y vector(i) <=20 Entonces
						sumaexcelente=sumaexcelente+1
					FinSi
				FinSi
			FinSi
		FinSi
	FinPara
		
	Escribir "La cantidad de alumnos con desempeño DEFICIENTE es de: ", sumadef
	Escribir ""
	Escribir "La cantidad de alumnos con desempeño REGULAR es de: ", sumareg
	Escribir ""
	Escribir "La cantidad de alumnos con desempeño BUENO es de: ", sumabuenos
	Escribir ""
	Escribir "La cantidad de alumnos con desempeño EXCELENTE es de: ", sumaexcelente
FinAlgoritmo
