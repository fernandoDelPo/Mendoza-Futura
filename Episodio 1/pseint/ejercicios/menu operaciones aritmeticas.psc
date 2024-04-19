Algoritmo sin_titulo
	Definir num1, num2, resul Como Real
	Definir operacion Como Caracter
	Definir eleccion Como caracter
	
	Escribir "========================================================================="
	Escribir "**                          MENU PRINCIPAL                             **"
	Escribir "**  Ingresa la letra que corresponda a la operacion que desea realizar **"
	Escribir "**      S:SUMAR  -  R:RESTAR  -  M: MULTIPLICAR  -  D:DIVIDIR          **"
	Escribir "========================================================================="
	
	Leer eleccion
	eleccion=Mayusculas(eleccion)
	Limpiar Pantalla
	
	Escribir "Ingrese el primer número"
	Leer num1
	Escribir "Ingrese el segundo número"
	Leer num2
	
	Si (eleccion="S") Entonces
		resul<-num1+num2
		operacion<-"Suma"
	SiNo
		Si (eleccion="R") Entonces
			resul<-num1-num2
			operacion<-"Resta"
		SiNo
			si (eleccion="M") Entonces
				resul<-num1*num2
				operacion<-"MULTIPLICACION"
			SiNo
				Si (eleccion="D") Entonces
					resul<-num1/num2
					operacion<-"DIVISION"
				SiNo
					Limpiar Pantalla
					Escribir "Error: ¡La opción ingresada no es correcta!"
				FinSi
			FinSi
		FinSi
		
	FinSi
	Escribir "El Resultado de la " operacion, " es:  ", resul;
	FinAlgoritmo
