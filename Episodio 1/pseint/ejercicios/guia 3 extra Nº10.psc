Algoritmo sin_titulo
	
	//Programar un juego donde la computadora elige un n�mero al azar entre 1 y 10, y a
	//continuaci�n el jugador tiene que adivinarlo. La estructura del programa es la siguiente:
	//1�) El programa elige al azar un n�mero n entre 1 y 10.
	//2�) El usuario ingresa un n�mero x.
	//3�) Si x no es el n�mero exacto, el programa indica si n es m�s grande o m�s peque�o
	//que el n�mero ingresado.
	//4�) Repetimos desde 2) hasta que x sea igual a n.
	//El programa tiene que imprimir los mensajes adecuados para informarle al usuario qu�
	//hacer y qu� pas� hasta que adivine el n�mero.
	//NOTA: Para generar un n�mero aleatorio entre 1 y 10 se puede utilizar la funci�n
	//Aleatorio(limite_inferior, limite_superior) de PSeInt.
	Definir numazar, num Como Real
	
	Definir numazar, num Como Real
	numazar=Aleatorio(1,20)
	num=0
	
	Hacer
		Escribir "Adivine el n�mero elegido entre 1 y 10"
		Leer num
		Si num=numazar Entonces
			Escribir "Acertaste"
		Sino 
			Si num<numazar Entonces
				Escribir "El n�mero ingresado es menor al n�mero escondido"
				Escribir "Intente nuevamente"
			Sino 
				Escribir "El n�mero ingresado es mayor al n�mero escondido"
				Escribir "Intenta nuevamente"
			FinSi
		FinSi
	Mientras Que num<>numazar
	

	
FinAlgoritmo
