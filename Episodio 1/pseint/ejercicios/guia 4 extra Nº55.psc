Algoritmo sin_titulo
	
	
	
	
	
	//Diseñar un procedimiento que reciba una frase, y el programa remueva todas las
	//vocales repetidas. Al final el procedimiento mostrará la frase final.
	
	Definir frase Como Caracter
	Escribir "Ingrese una frase o texto"
	Leer frase
	
	extraer_vocales_repetidas(frase)
	
	
FinAlgoritmo

SubProceso extraer_vocales_repetidas(frase)
	Definir fraseNueva Como Caracter
	Definir i, contadorA, contadorE, contadorI, contadorO, contadorU Como Entero
	contadorA=0
	contadorE=0
	contadorI=0
	contadorO=0
	contadorU=0
	
	
	fraseNueva=Mayusculas(frase)
	Para i=0 Hasta Longitud(frase) Hacer
		fraseNueva=Subcadena(frase, i, i)
		Si Subcadena(frase, i,i) = 'a' o Subcadena(frase, i,i) = 'A' Entonces
			contadorA<-contadorA+1
			si contadorA>1 Entonces
				fraseNueva<-Subcadena(frase, i+1,i+1)
			SiNo
				fraseNueva=Subcadena(frase, i,i)
				Escribir Sin Saltar fraseNueva
			FinSi
			SiNo
				Si Subcadena(frase, i,i) = 'e' o Subcadena(frase, i,i) = 'E' Entonces
					contadorE<-contadorE+1
					si contadorE>1 Entonces
						fraseNueva<-Subcadena(frase, i+1,i+1)
					SiNo
						fraseNueva=Subcadena(frase, i,i)
						Escribir Sin Saltar fraseNueva
					FinSi
				SiNo
					Si Subcadena(frase, i,i) = 'i' o Subcadena(frase, i,i) = 'I' Entonces
						contadorI<-contadorI+1
						si contadorI>1 Entonces
							fraseNueva<-Subcadena(frase, i+1,i+1)
						SiNo
							fraseNueva=Subcadena(frase, i,i)
							Escribir Sin Saltar fraseNueva
						FinSi
					SiNo
						Si Subcadena(frase, i,i) = 'o' o Subcadena(frase, i,i) = 'O' Entonces
							contadorO<-contadorO+1
							si contadorO>1 Entonces
								fraseNueva<-Subcadena(frase, i+1,i+1)
							SiNo
								fraseNueva=Subcadena(frase, i,i)
								Escribir Sin Saltar fraseNueva
							FinSi
						SiNo
							Si Subcadena(frase, i,i) = 'u' o Subcadena(frase, i,i) = 'U' Entonces
								contadorU<-contadorU+1
								si contadorU>1 Entonces
									fraseNueva<-Subcadena(frase, i+1,i+1)
								SiNo
									fraseNueva=Subcadena(frase, i,i)
									Escribir Sin Saltar fraseNueva
								FinSi
							SiNo
								Escribir Sin Saltar fraseNueva
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
	FinPara
				
FinSubProceso