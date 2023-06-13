# actividad 12:
# Inicializar la lista vacía
numeros = []

# Pedir números al usuario hasta que se ingrese un número negativo
while True:
    numero = int(input("Ingresa un numero (Ingresas un numero negativo para finalizar): "))
    
    if numero < 0:
        break

    numeros.append(numero)

# Verificar si la lista no está vacía
if numeros:
    # Obtener el máximo, mínimo y longitud de la lista
    maximo = max(numeros)
    minimo = min(numeros)
    longitud = len(numeros)

    # Mostrar los resultados
    print("El máximo número introducido es:", maximo)
    print("El mínimo número introducido es:", minimo)
    print("La longitud de la lista es:", longitud)
else:
    print("No se han ingresado números.")

