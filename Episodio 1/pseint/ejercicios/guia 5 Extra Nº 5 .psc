Algoritmo sin_titulo
	//Realizar una funci�n que calcule la suma de los d�gitos de un numero.
	//Ejemplo: 25 = 2 + 5 = 7
	//Nota: Para obtener el �ltimo numero de un digito de 2 cifras o m�s debemos pensar en
	//el resto de una divisi�n entre 10. Recordar el uso de la funci�n Mod y Trunc.
	
	Definir num, suma Como Real
	Escribir "Ingrese un n�mero"
	leer num
	
	suma=sumardigitos(num)
	Escribir "La suma de los d�gitos de ", num, " es ", suma
	
	
FinAlgoritmo

Funcion suma1 = sumardigitos(num)
	Definir suma1, digito Como Real
	suma1=0
	
	Mientras num>0 Hacer
		digito=num MOD 10
		suma1=suma1+digito
		num= TRUNC (num/10)
		
	FinMientras
FinFuncion
