# -*- coding: utf-8 -*-
"""
Created on Tue May 16 09:42:23 2023

@author: Del Pozzi Fernando
"""

def max_2(n1, n2):
    print("Ejercicio 1:")
    mayor = max(n1, n2)
    if n1 != n2:
        print(mayor)
    else:
        print("Son iguales")

max_2(5, 5)


numero = 235
cadena = str(numero)
longitud = len(cadena)
print(longitud)

lista = [2, 2, 4, 5, 6]
longitud_2 = len(lista)
print(longitud_2)

'''print("Ingresa tu nombre: ")
nombre = input()

print("Ingresa tu edad: ")
edad = input()

print("Tu nombre es ", nombre, " y tu edad es de ", edad)'''

print("Hola Fernando", end=" ")
print("es un placer conocerte")
