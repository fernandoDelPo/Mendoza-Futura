'''3 - Definir una función que calcule la longitud de una lista o una cadena dada. 
(Es cierto que python tiene la función len() incorporada, pero escribirla por nosotros mismos resulta un muy buen ejercicio.'''

def largo_cadena (lista):
    cont = 0
    for i in lista:
        cont += 1
    return cont

''' En este ejercicio utilizo return en ves de print. 
Para ver el resultado tendríamos que llamar la función de la manera: print largo_cadena ([1,2,3,4]) o
print largo_cadena ("hola")'''

print (largo_cadena ([1,2,3,4])) 
print (largo_cadena ("hola mundo"))
