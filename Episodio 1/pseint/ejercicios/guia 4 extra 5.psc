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
	
	Para i=0 Hasta Longitud(frase) Hacer
		fraseNueva=Subcadena(frase, i, i)
		
		Segun Subcadena(frase, i,i) Hacer
			'a': ('a'), ('A'):
					contadorA=contadorA+1
					Si contadorA>1 Entonces
						fraseNueva=Subcadena(frase, i+1,i+1)
					SiNo
						fraseNueva=Subcadena(frase, i, i)
					FinSi
			'e': ('e'), ('E'):
					contadorE=contadorE+1
					Si contadorE>1 Entonces
						fraseNueva=Subcadena(frase, i+1,i+1)
					SiNo
						fraseNueva=Subcadena(frase, i, i)
					FinSi		
			'i': ('i'), ('I'):
					contadorI=contadorI+1
					Si contadorI>1 Entonces
						fraseNueva=Subcadena(frase, i+1,i+1)
					SiNo
						fraseNueva=Subcadena(frase, i, i)
					FinSi		
			'o': ('o'), ('O'):
					contadorO=contadorO+1
					Si contadorO>1 Entonces
						fraseNueva=Subcadena(frase, i+1,i+1)
					SiNo
						fraseNueva=Subcadena(frase, i, i)
					FinSi		
			'u': ('u'), ('U'):
					contadorU=contadorU+1
					Si contadorU>1 Entonces
						fraseNueva=Subcadena(frase, i+1,i+1)
					SiNo
						fraseNueva=Subcadena(frase, i, i)
					FinSi		
					
				De Otro Modo:
					Escribir sin saltar fraseNueva
					
		FinSegun
		
	FinPara
	
	
	
	
	
	
FinSubProceso
	