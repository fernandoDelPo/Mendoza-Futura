Algoritmo sin_titulo
	definir anio Como Entero
	definir mes1, fecha Como Caracter
	Escribir  "Ingrese el a�o que desea verificar."
	Leer anio
	
	si anio >0 Entonces
		Escribir "El a�o ingresado es correcto.";
	SiNo
		Escribir "El a�o ingresado es incorrecto.";
	FinSi
	si (anio MOD 4=0 y anio MOD 100<>0) o (anio MOD 4=0 y anio MOD 400=0) Entonces
		Escribir "El a�o es bisiesto";
	SiNo
		Escribir "El a�o no es bisiesto.";
	FinSi
	
FinAlgoritmo
