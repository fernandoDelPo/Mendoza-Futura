Algoritmo sin_titulo
	
	//Programar un juego donde la computadora elige un número al azar entre 1 y 10, y a
	//continuación el jugador tiene que adivinarlo. La estructura del programa es la siguiente:
	//1º) El programa elige al azar un número n entre 1 y 10.
	//2º) El usuario ingresa un número x.
	//3º) Si x no es el número exacto, el programa indica si n es más grande o más pequeño
	//que el número ingresado.
	//4º) Repetimos desde 2) hasta que x sea igual a n.
	//El programa tiene que imprimir los mensajes adecuados para informarle al usuario qué
	//hacer y qué pasó hasta que adivine el número.
	//NOTA: Para generar un número aleatorio entre 1 y 10 se puede utilizar la función
	//Aleatorio(limite_inferior, limite_superior) de PSeInt.
	Definir numazar, num Como Real
	
	Definir numazar, num Como Real
	numazar=Aleatorio(1,20)
	num=0
	
	Hacer
		Escribir "Adivine el número elegido entre 1 y 10"
		Leer num
		Si num=numazar Entonces
			Escribir "Acertaste"
		Sino 
			Si num<numazar Entonces
				Escribir "El número ingresado es menor al número escondido"
				Escribir "Intente nuevamente"
			Sino 
				Escribir "El número ingresado es mayor al número escondido"
				Escribir "Intenta nuevamente"
			FinSi
		FinSi
	Mientras Que num<>numazar
	

	
FinAlgoritmo
