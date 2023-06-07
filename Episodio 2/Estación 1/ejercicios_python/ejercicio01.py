'''
1 - Definir una función max() que tome como argumento dos números y devuelva el mayor de ellos. 
(Es cierto que python tiene una función max() incorporada, pero hacerla nosotros mismos es un muy buen ejercicio.
'''

def max (n1, n2): # defino o creo una función en python
    if n1 < n2:       # Primera condición
        print ("El numero mayor es: ", n2)    # Instrucción en caso de que se dé la primera condición
    elif n2 < n1:       #Segunda condición
        print ("El numero mayor es: ", n1)      # Instruccion en caso de que se dé la segunda condición
    else:
        print ("Son iguales")  # Si no se dan las condiciones anteriores 
        
max(8, 5) # Acá llamo a la función y le paso los parametros. 8 será n1 y 5 será n2 en este ejemplo.

'''Aclaro que uso el print para llamar a la función de la manera max(8, 5).
También se puede usar return.'''
