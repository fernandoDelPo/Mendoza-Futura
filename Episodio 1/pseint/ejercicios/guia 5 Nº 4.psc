Algoritmo sin_titulo
	
	//Realizar un programa que pida al usuario una frase y una letra a buscar en esa frase. La
	//función debe devolver la cantidad de veces que encontró la letra. Nota: recordar el uso
	//de la función Subcadena().
	
	Definir frase, letra como cadena
	definir a Como Entero
	
	Escribir "Ingrese una frase."
	Leer frase
	Escribir "Ingrese la letra que desea contar dentro de la frase."
	Leer letra
	
	a=contarLetra(frase, letra)
	
	Escribir "La letra seleccionada (", letra, ") aparece ", a, " veces en la frase inicial."
	
	
	
FinAlgoritmo


Funcion contador = contarLetra(frase1, letra1)
	Definir contador, i Como Entero
	Definir letraactual como cadena
	contador=0
	i=0
	letraactual=""
	
	
	Para i=0 Hasta (Longitud(frase1)-1) Hacer
		Si Subcadena(frase1, i,i) = letra1 Entonces
			contador=contador+1
		FinSi
		
	FinPara
	
FinFuncion
