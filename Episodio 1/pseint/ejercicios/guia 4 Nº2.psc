Algoritmo temperatura_promedio
	//Crear una procedimiento que calcule la temperatura media de un d�a a partir de la
	//temperatura m�xima y m�nima. Crear un programa principal, que utilizando un
	//procedimiento, vaya pidiendo la temperatura m�xima y m�nima de n d�as y vaya
	//mostrando la media de cada d�a. El programa pedir� el n�mero de d�as que se van a
	//introducir.
	
	Definir dias, max, min,i, promed Como real
	Escribir "Ingrese la cantidad de d�as para promediar su temperatura"
	Leer dias
	promed=0
	Para i=1 Hasta dias Con Paso 1 Hacer
		Escribir "Ingrese la temperatura m�xima del d�a ", i
		Leer max
		Escribir "Ingrese la temperatura m�nima del d�a ", i
		leer min
		promedio(max, min, promed)
		Escribir "El la temperatura promedio del d�a ", i, " fue de " promed
		
		
	FinPara
	
	
FinAlgoritmo
SubProceso promedio(max, min, promed Por Referencia)
	promed=0
	promed=(max+min)/2
FinSubProceso
