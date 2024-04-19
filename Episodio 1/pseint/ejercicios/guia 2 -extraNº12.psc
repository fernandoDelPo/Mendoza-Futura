Algoritmo sin_titulo
	Definir comision, qhoras, qventa, valorhora, horasextras, salario1, salarioneto Como Real
	Definir modalidad Como Caracter
	
	Escribir "**===========================================================================**"
	Escribir "**                                                                           **"
	Escribir "**                  - Departamento de CONTABILIDAD -                         **"
	Escribir "**                                                                           **"
	Escribir "**---------------------------------------------------------------------------**"
	Escribir "**                                                                           **"
	Escribir "**                   INGRESE LA MODALIDAD DE SUELDO:                         **"
	Escribir "**                                                                           **"
	Escribir "**---------------------------------------------------------------------------**"
	Escribir "**                                                                           **"
	Escribir "**                        A = Por Comisión                                   **";
	Escribir "**                        B = Por Sueldo fijo + Comisión                     **";
	Escribir "**                        C = Por Sueldo fijo                                **";
	Escribir "**                                                                           **"
	Escribir "**---------------------------------------------------------------------------**"
	Escribir "**===========================================================================**"
	
	Leer modalidad
	modalidad=Mayusculas(modalidad)
	Limpiar Pantalla
	
	
	
	Segun modalidad Hacer
		"A":
			Escribir "Ingrese el monto total de ventas en $."
			Leer qventa
			comision=(40*qventa)/100
			salarioneto=comision
			Escribir "El SUELDO NETO es $  ", salarioneto;
			
		"B":
			Escribir "Ingrese el valor por hora de trabajo en $";
			Leer valorhora
			Escribir "Ingrese la cantidad de horas trabajadas.";
			Leer qhoras			
			Escribir "Ingrese el monto total de ventas en $.";
			Leer qventa
			
			Si qhoras <= 40 Entonces
				salario1=qhoras*valorhora
			SiNo
				salario1=40*valorhora
			FinSi
			comision=(25*qventa)/100
			salarioneto=comision + salario1
			Escribir "El SUELDO NETO es $  ", salarioneto;
			
			
		"C":
			Escribir "Ingrese el valor por hora de trabajo en $";
			Leer valorhora
			Escribir "Ingrese la cantidad de horas trabajadas.";
			Leer qhoras	
			Escribir "Ingrese la cantidad de horas extras.";
			Leer horasextras
			
			salario1=(horasextras*valorhora)/2
			salarioneto=(qhoras*valorhora) + salario1
			Escribir "El SUELDO NETO es de $  ", salarioneto;
			
			
		De Otro Modo:
			Escribir "ERROR DE SISTEMA"
	Fin Segun
	
	
	
	
	
FinAlgoritmo
