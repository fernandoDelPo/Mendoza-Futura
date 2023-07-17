
def es_multiplo(num1, num2):
    """
    COMENTARIO:
    Verifica si num1 es múltiplo de num2.

    Argumentos:
    - num1: Primer número entero.
    - num2: Segundo número entero.

    Retorna:
    - True si num1 es múltiplo de num2, False en caso contrario.
    """
    return num1 % num2 == 0  # 

def main():
    """
    Función principal que solicita dos números enteros al usuario y verifica si uno es múltiplo del otro.
    """
    try:
        num1 = int(input("Ingresa el primer número entero: "))
        num2 = int(input("Ingresa el segundo número entero: "))

        if es_multiplo(num1, num2) or es_multiplo(num2, num1):
            print(f" {num1} es múltiplo de {num2}")
        else:
            print(f" {num1} NO es múltiplo de {num2}")
    except ValueError:
        print("Error: Ingresa solo números enteros válidos.")

if __name__ == "__main__":
    main()


'''COMENTARIO:
En este código, hemos definido la función es_multiplo(num1, num2) que verifica si num1 es múltiplo de num2 utilizando el operador %,
que devuelve el residuo de la división entre num1 y num2. Si el residuo es igual a cero, entonces num1 es múltiplo de num2,
y la función devuelve True. En caso contrario, devuelve False.
En la función main(), solicitamos al usuario que ingrese los dos números enteros. Luego, llamamos a la función es_multiplo(num1, num2) 
y también verificamos si num2 es múltiplo de num1 utilizando es_multiplo(num2, num1). Si alguna de las dos verificaciones es verdadera, 
imprimimos que uno de los números es múltiplo del otro. En caso contrario, indicamos que ninguno de los números es múltiplo del otro.
Hemos agregado una protección para manejar posibles errores en la entrada del usuario utilizando un bloque try-except 
que captura excepciones ValueError cuando se ingresan valores que no son enteros válidos.'''