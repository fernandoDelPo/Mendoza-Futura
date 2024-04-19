Algoritmo sin_titulo
	//Crear una función llamada "Login", que recibe un nombre de usuario y una contraseña
	//y que devuelve Verdadero si el nombre de usuario es "usuario1" y si la contraseña es
	//"asdasd". Además la función calculara el número de intentos que se ha usado para
	//loguearse, tenemos solo 3 intentos, si nos quedamos sin intentos la función devolverá
	//Falso.
	
	Definir usuario, contrasenia Como Caracter
	Definir a Como Logico
	usuario=""
	contrasenia=""
	
	
	a=Login(usuario, contrasenia)
	Si a=Verdadero Entonces
		Escribir a, "  ***BIENVENIDO***" 
	SiNo
		Escribir a, "   ***USUARIO o CONTRASEÑA INVALIDOS***"
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
			Escribir "Ingrese su contraseña"
			leer contrasenia
			Si contrasenia = "asdasd" y usuario1 ="usuario1" Entonces
				b=Verdadero
			SiNo
				b=Falso
				Escribir "Contraseña INVALIDA"
				Escribir "Le quedan ", contador, "intentos"
			FinSi
		SiNo
			Escribir "Usuario INVALIDO"
			Escribir "Le quedan ", contador, " intentos "
			b=Falso
		FinSi
		
		
	Mientras Que (usuario1<>"usuario1" o contrasenia<>"asdasd") y (contador >= 1) 
	
	
	
FinFuncion
