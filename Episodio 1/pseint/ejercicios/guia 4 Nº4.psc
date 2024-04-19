
Algoritmo sin_titulo
	
	
	Definir pala Como Caracter
	definir i Como Entero
	Escribir "Ingrese una palabra"
	leer pala
	i=0
	

		
	cambiarletras(pala, i)
	Escribir ""

FinAlgoritmo


SubProceso cambiarletras(pala Por Referencia, i Por Referencia)

i=0

Para i<-0 hasta Longitud(pala) Hacer
	si Subcadena(pala, i,i) = "a" Entonces
		Escribir sin saltar "@"
	SiNo
		si Subcadena(pala, i,i) = "e" Entonces
			Escribir sin saltar "#"
		SiNo
			si Subcadena(pala, i,i) = "i" Entonces
				Escribir sin saltar "$"
			sino
				si Subcadena(pala, i,i) = "o" Entonces
					Escribir sin saltar "%"
				SiNo
					si Subcadena(pala, i,i) = "u" Entonces
						Escribir sin saltar "*"
					SiNo
						Escribir sin saltar Subcadena(pala, i, i)
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	
FinPara

FinSubProceso


