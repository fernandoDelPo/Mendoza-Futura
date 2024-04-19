Algoritmo sin_titulo
	//Una compañía de seguros tiene contratados a n vendedores. Cada vendedor realiza
	//múltiples ventas a la semana. La política de pagos de la compañía es que cada vendedor
	//recibe un sueldo base más un 10% extra por comisiones de sus ventas. El gerente de la 
	//compañía desea saber, por un lado, cuánto dinero deberá pagar en la semana a cada
	//vendedor por concepto de comisiones de las ventas realizadas, y por otro lado, cuánto
	//deberá pagar a cada vendedor como sueldo total (sueldo base + comisiones). Para cada
	//vendedor ingresar cuanto es su sueldo base, cuantas ventas realizó y cuanto cobró por
	//cada venta.
	
	
	definir qvendedores, qventa, comision, sueldobasesemanal, sueldototalsemanal, i Como Real;
	Definir legajo Como Caracter
	
	i=1
	Escribir "Ingrese la cantidad de empleados"
	Leer qvendedores
	
	Para i=1 Hasta qvendedores Hacer
		
		Escribir sin saltar "Ingrese Nº de Legajo del empleado"
		Leer legajo
		Escribir sin saltar "Ingrese sueldo fijo semanal"
		Leer sueldobasesemanal
		Escribir "Ingrese el monto de ventas realizadas por el empleado"
		Leer qventa
		comision=(10*qventa)/100
		sueldototalsemanal=sueldobasesemanal+comision
		Escribir "******************  Legajo EMPLEADO Nº: ", legajo, "******************"
		Escribir "----------------------------------------------------------------------"
		Escribir "Sueldo FIJO/SEMANAL:     $ ", sueldobasesemanal
		Escribir "Comisión del 10%/Ventas: $ ", comision
		Escribir "Sueldo TOTAL/SEMANAL:    $ ", sueldototalsemanal
		
	FinPara
	
	
FinAlgoritmo
