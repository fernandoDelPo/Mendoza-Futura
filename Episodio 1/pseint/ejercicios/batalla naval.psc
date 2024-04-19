Algoritmo sin_titulo
	//Batalla NAVAL
	Definir matriz Como Entero
	Dimension matriz[4,4]
	
	iniciarjuego(matriz)
	
FinAlgoritmo


//-------------------------------------------------------------------------------------

SubProceso iniciarjuego(matriz)
	Definir i, j, fila, col, escudo1, escudo2, escudo3, canon, disparo Como Entero
	Definir op Como Caracter
	Para i=0 Hasta 4-1 Hacer
		Para j=0 Hasta 4-1 Hacer
			matriz[i,j] = 11
		FinPara
	FinPara
	op=" "
	canon=40
	disparo=0
	Repetir
		
		Escribir "----------------------------------------------------------------"
		Escribir "             ***        BATALLA NAVAL     ***                   " 
		Escribir "----------------------------------------------------------------"
		Escribir "                                                                "
		Escribir "                     A: NUEVO JUEGO                             "
		Escribir "                     B: JUGAR - CONTINUAR PARTIDA               "
		Escribir "                     C: MOSTRAR MAPA                            "
		Escribir "                     D: MOSTRAR Estado del Escudo               "
		Escribir "                     E: MOSTRAR disparos disponibles            "
		Escribir "                     F: TERMINAR PARTIDA                        "
		Escribir "                                                                "
		Escribir "----------------------------------------------------------------"
		Leer op
		op=Mayusculas(op)
		
		Segun op Hacer
			"A": 
				Escribir "El Defensor debe indicar la ubicación de la nave"
				Escribir "La misma debe contar con tres ubicaciones concatenadas en forma horizontal o vertical"
				Escribir "La NAVE contará con un ESCUDO de electrones cuyo valor no será mayor que 12"
				Escribir "Ingrese la columna (0 a 3) correspondiente la primer ubicación"
				leer col
				Escribir "Ingrese la fila (0 a 3)"
				leer fila
				Escribir "Ingrese el valor del ESCUDO DE ELECTRONES para esta ubicación"
				leer escudo1
				Si col > 3 o fila >3 o escudo1 > 12 Entonces
					Escribir"Los datos ingresados son incorrectos"
					op="F"
				SiNo
					matriz[fila,col] = escudo1
				FinSi
				
				Escribir "Ingrese la columna de la segunda ubicación"
				leer col
				Escribir "Ingrese la fila de la segunda ubicación"
				Leer fila
				Escribir "Ingrese el valor del ESCUDO DE ELECTRONES para esta ubicación"
				leer escudo2
				Si col > 3 o fila > 3 o (escudo1 + escudo2) > 12 Entonces
					Escribir"Los datos ingresados son incorrectos"
					op="F"
				SiNo
					matriz[fila,col] = escudo2
				FinSi
			
				Escribir "Ingrese la columna de la tercera ubicación"
				leer col
				Escribir "Ingrese la fila de la tercera ubicación"
				Leer fila
				Escribir "Ingrese el valor del ESCUDO DE ELECTRONES para esta ubicación"
				leer escudo3
				Si col > 3 o fila >3 o (escudo1+escudo2+escudo3) > 12 Entonces
					Escribir"Los datos ingresados son incorrectos"
					op="F"
				SiNo
					matriz[fila,col] = escudo3
				FinSi
				
			"B":
				Escribir "El atacante cuenta con un CAÑON de PROTONES con 40 cargas"
				Escribir "La carga del disparo para ser efectiva tiene que ser igual o menor a la carga del Escudo"
				Escribir "Ingrese la columna y fila del disparo (MAPA 4X4)"
				leer j, i
				Escribir "La carga del Cañón es de " canon, " disparos."
				Escribir "Ingrese la potencia del cañón de protones"
				Leer disparo
				canon = canon-disparo
				Si matriz[i,j] =  11 Entonces
					Escribir " ¡Espacio! ¡Fallaste! "
					matriz[i,j] = 0  
				Sino 
					Si matriz[i,j] <= escudo1 y escudo1 = 0 Entonces
						matriz[i,j] = matriz [i,j] - escudo1
						Escribir "Ataque EFECTIVO - ESCUDO NEUTRALIZADO"
					Sino 
						si matriz[i,j] <= escudo1 y escudo1 > 0 Entonces
							escudo1=escudo1-disparo
							Escribir "ATAQUE EFECTIVO - El escudo de este Sector sigue ACTIVO"
						Sino 
							Si matriz[i,j] <= escudo1 y escudo1<disparo Entonces
								escudo1=escudo1
								Escribir "ATAQUE SIN EFECTO "
							SiNo
								
								Si matriz[i,j] <= escudo2 y escudo2 = 0 Entonces
									escudo2=0
									Escribir "Ataque EFECTIVO - ESCUDO NEUTRALIZADO"
								Sino 
									si matriz[i,j] <= escudo2 y escudo2 > 0 Entonces
										escudo2=escudo2-disparo
										Escribir "ATAQUE EFECTIVO - El escudo de este Sector sigue ACTIVO"
									Sino 
										Si matriz[i,j] <= escudo2 y escudo2<disparo Entonces
											escudo2=escudo2
											Escribir "ATAQUE SIN EFECTO "
										SiNo
											Si matriz[i,j] <= escudo3 y escudo3 = 0 Entonces
												escudo3=0
												Escribir "Ataque EFECTIVO - ESCUDO NEUTRALIZADO"
											Sino 
												si matriz[i,j] <= escudo3 y escudo3 > 0 Entonces
													escudo3=escudo3-disparo
													Escribir "ATAQUE EFECTIVO - El escudo de este Sector sigue ACTIVO"
												Sino 
													Si matriz[i,j] <= escudo3 y escudo3<disparo Entonces
														escudo3=escudo3
														Escribir "ATAQUE SIN EFECTO "
													Sino 
														si escudo1=0 y escudo2=0 y escudo3=0 Entonces
															Escribir " ¡NAVE HUNDIDA! - YOU WIN "
														Sino 
															Si disparo<=0 Entonces
																Escribir "El CAÑON de PROTONES se quedó sin CARGA - GAME OVER"
															FinSi
														FinSi
													FinSi
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
				
			"C":
				i=0
				j=0
				Para i=0 Hasta 4-1 Hacer
					Para j=0 Hasta 4-1 Hacer
						Escribir sin saltar " ", matriz[i,j], " "
					FinPara
					Escribir ""
				FinPara
				
			"D":
				Escribir "El estado de los escudos es: ", escudo1," ", escudo2, " ", escudo3
				
			"E":
				Escribir "El CAÑÓN de PROTONES cuenta con ", canon, " disparos."				
				
		FinSegun		
	Mientras Que op<>"F" 
FinSubProceso
