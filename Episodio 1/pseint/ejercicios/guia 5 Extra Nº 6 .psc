Algoritmo sin_titulo
	Definir num Como Real
	Definir impar Como Logico
	Escribir "Ingrese un número"
	leer num
	
	impar=esimpar(num)
	Si impar = Verdadero Entonces
		Escribir "Todos los digitos de ", num, " son IMPARES."
	SiNo
		Escribir "Todos o alguno de los dígitos de ", num, " no son impares."
	FinSi
	
	
	
FinAlgoritmo

Funcion num2 = esimpar(num)
	Definir digito Como Real
	Definir num2 Como Logico
	
	
	
	Hacer
		digito=num MOD 10
		
		Si digito MOD 2=0 Entonces
			num2=Falso
			
		SiNo
			Si digito MOD 2 <> 0
			num2=verdadero
			finsi
		FinSi
		num=TRUNC (num/10)
	Mientras Que num2=verdadero y num<>0
	

FinFuncion
