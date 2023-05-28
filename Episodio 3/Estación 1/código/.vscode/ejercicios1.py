'''1 - Definir una función max() que tome como argumento dos números y devuelva el mayor de ellos. 
(Es cierto que python tiene una función max() incorporada, pero hacerla nosotros mismos es un muy buen ejercicio.'''

def max_1(n1, n2):
    print("Ejercicio 1:")
    if n1 < n2:
        print ("El numero mas alto es:", n2)
    elif n2 < n1:
        print ("El numero mas alto es:", n1)
    else:
        print("Son iguales")

max_1(2, 1)

# Con la función max() de python
def max_2(n1, n2):
    print("Ejercicio 1:")
    mayor = max(n1, n2)
    if n1 != n2:
        print("El numero mas alto es:", mayor)
    else:
        print("Son iguales")

max_2(5, 5)

#Aca hacemos lo mismo pero usando return en la funcion en vez de print. Luego sí imprimimos el resultado
def max_2(n1, n2):
    print("Ejercicio 1:")
    mayor = max(n1, n2)
    if n1 != n2:
        return mayor
    else:
        return "Son iguales"

resultado = max_2(5, 8)
print("El numero mas alto es:", resultado)
print("\n")

'''2 - Definir una función max_de_tres(), que tome tres números como argumentos y devuelva el mayor de ellos.'''
def max_de_tres(n1, n2, n3):
    print("Ejercicio 2:")
    if n1 > n2 and n1 < n3:
        print("El numero mas alto es: ", n1)
    elif n2 > n1 and n2 > n3:
        print("El numero mas alto es: ", n2)
    else:
        print("El numero mas alto es: ", n3)

max_de_tres(8, 5, 6)


#Usando return en la funcion:

def max_de_tres_bi(n1, n2, n3):
    print("Ejercicio 2:")
    if n1 > n2 and n1 > n3: #En Python, para comprobar múltiples condiciones, debes usar el operador de comparación and en lugar de &.
        return n1
    elif n2 > n1 and n2 > n3:
        return n2
    else:
        return n3
resultado = max_de_tres_bi(45, 8, 9)
print("El numero mas alto es: ", resultado )
print("\n")


import numpy as np
a = np.ones((2, 4))
b = a.reshape((4, 2))
print(b)