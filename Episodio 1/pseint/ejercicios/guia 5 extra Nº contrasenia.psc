Algoritmo sin_titulo
	//Crear una funci�n llamada "Login", que recibe un nombre de usuario y una contrase�a
	//y que devuelve Verdadero si el nombre de usuario es "usuario1" y si la contrase�a es
	//"asdasd". Adem�s la funci�n calculara el n�mero de intentos que se ha usado para
	//loguearse, tenemos solo 3 intentos, si nos quedamos sin intentos la funci�n devolver�
	//Falso.
	
	Definir usuario, contrasenia Como Caracter
	Definir a Como Logico
	usuario=""
	contrasenia=""
	
	
	a=Login(usuario, contrasenia)
	Si a=Verdadero Entonces
		Escribir a, "  ***BIENVENIDO***" 
	SiNo
		Escribir a, "   ***USUARIO o CONTRASE�A INVALIDOS***"
	FinSi
	
FinAlgoritmo

Funcion b = Login(usuario1, contrasenia)
	Definir b Como Logico
	Definir contador Como Entero
	contador=3
	Hacer
		Escribir "Ingrese el USUARIO"
		Leer usuario1
		contador=contador-1
		Si usuario1 = "usuario1" Entonces
			Escribir "Usuario correcto"
			Escribir "Ingrese su contrase�a"
			leer contrasenia
			Si contrasenia = "asdasd" y usuario1 ="usuario1" Entonces
				b=Verdadero
			SiNo
				b=Falso
				Escribir "Contrase�a INVALIDA"
				Escribir "Le quedan ", contador, "intentos"
			FinSi
		SiNo
			Escribir "Usuario INVALIDO"
			Escribir "Le quedan ", contador, " intentos "
			b=Falso
		FinSi
		
		
	Mientras Que (usuario1<>"usuario1" o contrasenia<>"asdasd") y (contador >= 1) 
	
	
	
FinFuncion
