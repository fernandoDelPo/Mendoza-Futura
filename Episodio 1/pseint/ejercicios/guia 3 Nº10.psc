Algoritmo sin_titulo
	//Una compa��a de seguros tiene contratados a n vendedores. Cada vendedor realiza
	//m�ltiples ventas a la semana. La pol�tica de pagos de la compa��a es que cada vendedor
	//recibe un sueldo base m�s un 10% extra por comisiones de sus ventas. El gerente de la 
	//compa��a desea saber, por un lado, cu�nto dinero deber� pagar en la semana a cada
	//vendedor por concepto de comisiones de las ventas realizadas, y por otro lado, cu�nto
	//deber� pagar a cada vendedor como sueldo total (sueldo base + comisiones). Para cada
	//vendedor ingresar cuanto es su sueldo base, cuantas ventas realiz� y cuanto cobr� por
	//cada venta.
	
	
	definir qvendedores, qventa, comision, sueldobasesemanal, sueldototalsemanal, i Como Real;
	Definir legajo Como Caracter
	
	i=1
	Escribir "Ingrese la cantidad de empleados"
	Leer qvendedores
	
	Para i=1 Hasta qvendedores Hacer
		
		Escribir sin saltar "Ingrese N� de Legajo del empleado"
		Leer legajo
		Escribir sin saltar "Ingrese sueldo fijo semanal"
		Leer sueldobasesemanal
		Escribir "Ingrese el monto de ventas realizadas por el empleado"
		Leer qventa
		comision=(10*qventa)/100
		sueldototalsemanal=sueldobasesemanal+comision
		Escribir "******************  Legajo EMPLEADO N�: ", legajo, "******************"
		Escribir "----------------------------------------------------------------------"
		Escribir "Sueldo FIJO/SEMANAL:     $ ", sueldobasesemanal
		Escribir "Comisi�n del 10%/Ventas: $ ", comision
		Escribir "Sueldo TOTAL/SEMANAL:    $ ", sueldototalsemanal
		
	FinPara
	
	
FinAlgoritmo
