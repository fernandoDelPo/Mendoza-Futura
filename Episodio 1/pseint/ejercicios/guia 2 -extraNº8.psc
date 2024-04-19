Algoritmo ruedas
	Definir llantas, punitario, ptotal Como Entero
	
	Escribir "Ingrese la cantidad de llantas que desea comprar"
	
	Leer llantas;
	
	
	
	Si llantas >=1 y llantas <=4 Entonces
		punitario=3000
		ptotal=llantas*punitario
	SiNo
		si llantas >= 5 y llantas <=10 Entonces
			punitario=2500
			ptotal=llantas*punitario
		SiNo
			si llantas >=11 Entonces
				punitario=2000
				ptotal=llantas*punitario
			FinSi
		FinSi
	FinSi
	
	Escribir "Precio unitario por llanta: $ ", punitario;
	Escribir "Precio total es de: $ ", ptotal; 
	
FinAlgoritmo
