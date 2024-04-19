Algoritmo sin_titulo
	Definir pala, pala2, letra1, letra2 Como Caracter
	definir letras Como Entero
	Definir soniguales Como Logico
	pala2 <-"";
	Escribir "Ingresa una palabra o frase"
	Leer  pala
	
	Para letras<-Longitud(pala)-1 Hasta 0 Con Paso  -1 Hacer
		pala2<-Concatenar(pala2, Subcadena(pala, letras, letras))
	FinPara
	
	letra1<-Subcadena(pala, 0,0)
	letra2<-Subcadena(pala2, 0,0)
	
	si letra1 = letra2 Entonces
		soniguales = Verdadero
	SiNo
		soniguales = Falso
		
	FinSi
	
	Escribir "Son iguales la primera y última letra?  ", soniguales ;
FinAlgoritmo
