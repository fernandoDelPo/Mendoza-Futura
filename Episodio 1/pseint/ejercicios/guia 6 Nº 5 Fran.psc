Algoritmo sin_titulo
	Definir a, b, c Como Real
	Definir tamano Como Entero
	Escribir "Ingrese la cantidad de números de Subindices de cada VECTOR"
	leer tamano
	
	Dimension a(tamano)
	Dimension b(tamano)
	Dimension c(tamano)
	
	mostrarMenu()
	activarMenu(a, b, c, tamano)

FinAlgoritmo

//-----------------------------------------------------------------------

//Muestra menú por pantalla
SubProceso mostrarMenu()
	Escribir "-------------------------------------------------------------"
	Escribir "                                                             "
	Escribir "                     ** VECTORES  **                         "
	Escribir "                                                             "
	Escribir "                  - Elija una Opción -                       "
	Escribir "                 A = Para llenar VectorA                     "
	Escribir "                 B = Para llenar VectorB                     "
	Escribir "                 C = Para suma VectorA y VectorB             "
	Escribir "                 D = Para restar VectorA y VectorB           "
	Escribir "                 E = Para mostrar Vector                     "
	Escribir "                 S = Para SALIR de la aplicación             "
	Escribir "-------------------------------------------------------------"
FinSubProceso

//----------------------------------------------------------------------------------
SubProceso activarMenu(vectorA, vectorB, vectorC, tamano)
	Definir sel Como Caracter
	Definir vectorAlleno, vectorBlleno, vectorClleno Como Logico
	
	//estas referencias sirven para determinar si se han llenado los vectores previo a la suma, resta y mostrarMenu
	
	vectorAlleno=Falso
	vectorBlleno=Falso
	vectorClleno=Falso
	
	Leer sel
	Escribir "Ha seleccionado la opción: ", sel
	sel=Mayusculas(sel)
	
	Mientras sel <> "F" Hacer
		Si sel = "A" Entonces
			vectorAlleno=Verdadero
		FinSi
		Si sel = "B" Entonces
			vectorBlleno=Verdadero
		FinSi
		Si sel = "C" o sel ="D" Entonces
			vectorClleno= Verdadero
		FinSi
		
		Segun sel Hacer
			"A": 
				llenarVector(vectorA, tamano)
				Escribir "VECTOR A lleno con ", tamano, " números aleatorios."
				Escribir ""
			"B":
				llenarVector(vectorB, tamano)
				Escribir  "VECTOR B lleno con ", tamano, " números aleatorios."
				Escribir ""
			"C":
				Si vectorAlleno y vectorBlleno Entonces
					sumaAB(vectorC, vectorA, vectorB, tamano)
				Escribir "Se sumaron los elementos del VECTOR A y del VECTOR B"
				Escribir ""
			SiNo
				Escribir "Los vectores A y B deben estar inicializados"
				Escribir ""
				FinSi
			"D":
				Si vectorAlleno y vectorBlleno Entonces
					restaAB(vectorC, vectorA, vectorB, tamano)
					Escribir "Se restaron los elementos del VECTOR A y del VECTOR B"
					Escribir ""
				SiNo
					Escribir "Los vectores A y B deben estar inicializados"
					Escribir ""
				FinSi
				
			"E":
				Si vectorAlleno y vectorBlleno y vectorClleno Entonces
					mostraruno(vectorA, vectorB, vectorC, tamano)
				SiNo
					Escribir "Los VECTORES deben estar inicializados para mostrarlos."
				FinSi
				
				
			De Otro Modo:
				Si sel <> "F"
					Escribir "Ingrese una opción válida"
				FinSi
		FinSegun
		Escribir "Ingrese otra opción"
		Leer sel
		sel=Mayusculas(sel)
	FinMientras
	
FinSubProceso

//----------------------------------------------------------------------------------------------
//Recibe cualquier vector y lo llena con números alatorios.
SubProceso llenarVector(vector, tamano)
	Definir i Como Entero
	Para i=0 Hasta tamano-1 Hacer
		vector[i]=Aleatorio(0,100)
	FinPara
FinSubProceso

//----------------------------------------------------------------------------------------------
// suma los elementos de cada subindice de cada vector
SubProceso sumaAB(vectorC, vectorA, vectorB, tamano)
	Definir i Como Entero
	Para i=0 Hasta tamano-1 Hacer
		vectorC[i]=vectorA[i]+vectorB[i]
	FinPara
FinSubProceso

//-----------------------------------------------------------------------------------------------
// resta los elementos de cada subindice de cada vector

SubProceso restaAB(vectorC, vectorA, vectorB, tamano)
	Definir i Como Entero
	Para i=0 Hasta tamano-1 Hacer
		vectorC[i]=vectorA[i]-vectorB[i]
	FinPara
FinSubProceso

//----------------------------------------------------------------------------------------------
//Pide elegir uno de los vectores para luego mostrarlo
SubProceso mostraruno(vectorA, vectorB, vectorC, tamano)
	Definir i Como Entero
	Definir vectorelegido Como Caracter
	
	Hacer
		Escribir "¿Cuál VECTOR desea mostrar? (A, B o C)"
		Leer vectorelegido
		vectorelegido=Mayusculas(vectorelegido)
		
		Si vectorelegido<> "A" y vectorelegido<> "B" y vectorelegido<>"C" Entonces
			Escribir "Elija una opción válida (A, B o C)" 
		FinSi
	Mientras Que vectorelegido<> "A" y vectorelegido<> "B" y vectorelegido<>"C"
	Escribir ""
	Escribir "El vector elegido es ", vectorelegido
	
	Segun  vectorelegido Hacer
		"A":
			mostrarVector(vectorA, tamano)
		"B":
			mostrarVector(vectorB, tamano)
		"C":
			mostrarVector(vectorC, tamano)
	FinSegun
FinSubProceso

//----------------------------------------------------------------------------------------------
//Muestra el vector seleccionado en el subproceso anterior
SubProceso mostrarVector(vector, tamano)
	Definir i Como Entero
	Para i=0 Hasta tamano-1 Hacer
		Si i = 0 Entonces
			Escribir Sin Saltar "{ ", vector[i], " - "
		Sino 
			si i>0 y i< tamano-1 Entonces
				Escribir Sin Saltar vector[i], " - "
			SiNo
				si i = tamano-1 Entonces
					Escribir vector[i], " }"
				FinSi
			FinSi
		FinSi
	FinPara
	// aca podría invocar "mostrarMenu()" para que me devuelva al menu
FinSubProceso

	