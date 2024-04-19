Algoritmo sin_titulo
	Definir Total, totalmasc, totalfem Como Entero;
	Total = 0;
	totalmasc = 0;
	totalfem = 0;
	
	Definir porcentajemasc, porcentajefem Como Real;
	porcentajemasc = 0;
	porcentajefem = 0;
	
	Escribir "Ingresa el numero de la cantidad actual de niños en el curso";
	Leer totalmasc;
	Escribir "Ingresa el numero de la cantidad actual de niñas en el curso";
	Leer  totalfem;
	
	Total = totalmasc + totalfem;
	
	porcentajemasc = (totalmasc * 100) / Total;
	porcentajefem = (totalfem * 100) / Total;
	
	Escribir "La cantidad actual de alumnos en el curso es de : ", Total;
	Escribir "El porcentaje actual de niños en el curso es de : ", porcentajemasc;
	Escribir "El porcentaje actual de niñas en el curso es de : ", porcentajefem;
	
FinAlgoritmo
