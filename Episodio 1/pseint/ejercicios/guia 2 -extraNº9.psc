Algoritmo sin_titulo
	definir anio Como Entero
	definir mes1, fecha Como Caracter
	Escribir  "Ingrese el año que desea verificar."
	Leer anio
	
	si anio >0 Entonces
		Escribir "El año ingresado es correcto.";
	SiNo
		Escribir "El año ingresado es incorrecto.";
	FinSi
	si (anio MOD 4=0 y anio MOD 100<>0) o (anio MOD 4=0 y anio MOD 400=0) Entonces
		Escribir "El año es bisiesto";
	SiNo
		Escribir "El año no es bisiesto.";
	FinSi
	
FinAlgoritmo
