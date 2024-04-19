Algoritmo sin_titulo
	definir vector, a, i Como Entero
	i=0
	Dimension vector(4)
	Para i=0 hasta 3 Hacer
		vector(i)=Aleatorio(0,50)
	FinPara
	
	a=multiplicarvector(vector)
	Escribir "El producto de todos los valores es igual a", " V[0]",vector[0]," * ","V[1]", vector[1]," * ","V[2]",vector[2], " * ","V[3]", vector[3] " = ", a 
FinAlgoritmo
Funcion b=multiplicarvector(vector)
	Definir b, i Como Real
	b=1
	i=0
	Para i=0 hasta 3 Hacer
		b=b*vector(i)
	FinPara
	
	
	
FinFuncion
	