Algoritmo sin_titulo
	//Realizar un programa con el siguiente men� y le pregunte al usuario que quiere hacer
	//hasta que ingrese la opci�n Salir:
	//a. Llenar Vector A. Este vector es de tama�o N y se debe llenar de manera
	//aleatoria usando la funci�n Aleatorio(valorMin, valorMax) de PseInt.
	//b. Llenar Vector B. Este vector tambi�n es de tama�o N y se llena de manera
	//aleatoria.
	//c. Llenar Vector C con la suma de los vectores A y B. La suma se debe realizar
	//elemento a elemento. Ejemplo: C = A + B
	//d. Llenar Vector C con la resta de los vectores B y A. La resta se debe realizar
	//elemento a elemento. Ejemplo: C = B - A
	//e. Mostrar. Esta opci�n debe permitir al usuario decidir qu� vector quiere mostrar:
	//Vector A, B, o C.
	//f. Salir.
	//NOTA: El rango de los n�meros aleatorios para los Vectores ser� de [-100 a 100]. La
	//longitud para todos los vectores debe ser la misma, por lo tanto, esa informaci�n s�lo se
	//solicitar� una vez.
	
	Definir num, num1, i, vectorA, vectorB, vectorC, vectorC2, sumaA, sumaB, sumaC, resta Como Real
	Definir eleccion, eleccion2 Como Caracter
	Escribir "Ingrese el tama�o de los vectores" 
	Leer num
	sumaA=0
	sumaB=0
	sumaC=0
	resta=0
	i=0
	
	Dimension vectorA(num)
	Dimension vectorB(num)
	Dimension vectorC(2)
	Dimension vectorC2(2)
	
	Repetir
	Escribir "-------------------------------------------------------------"
	Escribir "                                                             "
	Escribir "                     ** VECTORES  **                         "
	Escribir "                                                             "
	Escribir "                  - Elija una Opci�n -                       "
	Escribir "                 A = Para llenar VectorA                     "
	Escribir "                 B = Para llenar VectorB                     "
	Escribir "                 C = Para suma VectorA y VectorB             "
	Escribir "                 D = Para restar VectorA y VectorB           "
	Escribir "                 E = Para mostrar Vector                     "
	Escribir "                 S = Para SALIR de la aplicaci�n             "
	Escribir "-------------------------------------------------------------"
	
	Leer  eleccion
	eleccion=Mayusculas(eleccion)
	
	
		Si eleccion ="A" Entonces
			
			Para i=0 hasta num-1 Hacer
				vectorA(i)=Aleatorio(-100,100)
				sumaA=sumaA+vectorA(i)
			FinPara
			Escribir sumaA
		Finsi
		Si eleccion ="B" Entonces
			Para  i=0 hasta num-1 Hacer
				vectorB(i)=Aleatorio(-100,100)
				sumaB=sumaB+vectorB(i)
			FinPara
		FinSi
		
		Si eleccion ="C" Entonces
			
				vectorC(2)=sumaA+sumaB
			
		FinSi
			
			
		Si eleccion ="D" Entonces
			
				vectorC2(2)=sumaA-sumaB
			
		FinSi
			
		Si eleccion = "E" Entonces
			Escribir "�Cu�l Vector desea imprimir en pantalla? A - B - C " 
			Leer eleccion2
			eleccion2=Mayusculas(eleccion2)
			Si eleccion2 = "A" Entonces
				Para i=0 hasta num-1 Hacer
					Escribir sin saltar "[", vectorA(i), "]"
				FinPara
				
			Sino 
				Si eleccion2 = "B" Entonces
				Para i=0 hasta num-1 Hacer
					Escribir sin saltar "[", vectorB(i), "]"
				FinPara
				
			Sino 
				Si eleccion2 = "C" Entonces
				Para i=0 hasta 1 Hacer
					Escribir sin saltar "[", vectorC(i), "]  Suma" 
					Escribir sin saltar "[", vectorC2(i), "]  Resta" 
				FinPara
				
			FinSi
		FinSi
	FinSi
FinSi

			
		Mientras que eleccion<>"S"
		

	
	

	
FinAlgoritmo
