Algoritmo sin_titulo
	//Crear un subproceso que rellene dos arreglos de tamaño n, con números aleatorios.
	//Después, hacer una función que reciba los dos arreglos y diga si todos sus valores son
	//iguales o no. La función debe devolver el resultado de está validación, para mostrar el
	//mensaje en el algoritmo. Nota: recordar el uso de las variables de tipo lógico.
	
	Definir a Como Logico
	Definir vector1, vector2, num Como Entero
	Escribir "Ingrese el tamaño de los vectores"
	Leer num
	Dimension vector1(num)
	Dimension vector2(num)
	
	a=validarvalores(vector1, vector2, num)
	Si a=Verdadero Entonces
		Escribir "Todos los valores de los arreglos son iguales  ", a
	SiNo
		Escribir "Todos o algunos de los arreglos son distintos  ", a
	FinSi
		
FinAlgoritmo
Funcion b=validarvalores(vector1, vector2, num)
	Definir b Como Logico
	Definir i Como Entero
	i=0
	Para i=0 hasta num-1 Hacer
		vector1(i)=Aleatorio(0,100)
		Escribir sin saltar " [", vector1(i), "] "
	FinPara
	Escribir ""
	Para i=0 Hasta num-1 Hacer
		vector2(i)=Aleatorio(0,100)
		Escribir sin saltar " [", vector2(i), "] "
	FinPara
	Escribir ""
	Para i=0 hasta num-1 Hacer
		Si vector1(i) = vector2(i) Entonces
			b=Verdadero
			Escribir "- El valor ", vector1(i), " es igual a ", vector2(i)  
		SiNo
			b=Falso
			Escribir "- El valor ", vector1(i), " es distinto de ", vector2(i)  
		FinSi
	FinPara		
	Escribir ""
FinFuncion
