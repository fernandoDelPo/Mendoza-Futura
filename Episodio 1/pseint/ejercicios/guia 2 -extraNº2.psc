Algoritmo Descuendo_10
	Definir compra, desc, sindesc, final Como Real
	Definir meses Como caracter
	Escribir "Ingrese el valor de la compra."
	Leer compra
	Escribir "Ingrese el mes (1 al 12) de la operación."
	Leer meses
	
	desc=(compra*10) /100
	
	Si (meses="9") o (meses="10") o (meses="11") Entonces
		final=compra - desc
		Escribir "***Obtuvo un DESCUENTO del 10% !!! Valor total de la compra: $  ", final;
	SiNo
		final=compra
		Escribir "El precio total de su compra es: $ ", final
	FinSi
	
	
FinAlgoritmo
