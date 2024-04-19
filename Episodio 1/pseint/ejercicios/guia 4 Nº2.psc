Algoritmo temperatura_promedio
	//Crear una procedimiento que calcule la temperatura media de un día a partir de la
	//temperatura máxima y mínima. Crear un programa principal, que utilizando un
	//procedimiento, vaya pidiendo la temperatura máxima y mínima de n días y vaya
	//mostrando la media de cada día. El programa pedirá el número de días que se van a
	//introducir.
	
	Definir dias, max, min,i, promed Como real
	Escribir "Ingrese la cantidad de días para promediar su temperatura"
	Leer dias
	promed=0
	Para i=1 Hasta dias Con Paso 1 Hacer
		Escribir "Ingrese la temperatura máxima del día ", i
		Leer max
		Escribir "Ingrese la temperatura mínima del día ", i
		leer min
		promedio(max, min, promed)
		Escribir "El la temperatura promedio del día ", i, " fue de " promed
		
		
	FinPara
	
	
FinAlgoritmo
SubProceso promedio(max, min, promed Por Referencia)
	promed=0
	promed=(max+min)/2
FinSubProceso
