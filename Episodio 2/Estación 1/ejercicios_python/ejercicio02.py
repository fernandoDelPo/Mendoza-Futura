'''2 - Definir una función max_de_tres(), 
que tome tres números como argumentos y devuelva el mayor de ellos.'''

def max_de_tres (n1, n2, n3):
    if n1 > n2 and n1 > n3:
        print("El numero mayor es: ", n1)
    elif n2 > n1 and n2 > n3:
        print ("El numero mayor es: ", n2)
    elif n3 > n1 and n3 > n2:
        print ("El numero mayor es: ", n3)
    else:
        print ("Son iguales")
        
max_de_tres(5, 12, 0) #Llamo a la funcion max_de_tres y le paso los tres numeros (n1, n2, n3).

'''Otra vez uso el print en ves del return. Dependiendo para que lo necesitemos se usa uno u el otro. 
En este caso solo quiero mostrar por pantalla cual es el mayor de los 3 números.'''