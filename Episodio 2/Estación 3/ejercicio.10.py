import random

def palabra_aleatoria(lista_palabras):
    return random.choice(lista_palabras)

def main():
    vehiculos = ['avión', 'bicicleta', 'coche', 'motocicleta', 'tractor', 'barco', 'transatlántico', 'camión']
    palabra_elegida = palabra_aleatoria(vehiculos)

    print("Palabra aleatoria elegida:", palabra_elegida)

if __name__ == "__main__":
    main()


'''COMENTARIOS: 
En este código, hemos definido la función palabra_aleatoria(lista_palabras) 
que toma una lista de palabras lista_palabras y utiliza random.choice(lista_palabras) 
para elegir una palabra al azar de la lista.
En la función main(), hemos creado la lista vehiculos con las palabras proporcionadas. 
Luego, llamamos a la función palabra_aleatoria(vehiculos) para obtener la palabra aleatoria 
y la mostramos en pantalla.
Cada vez que ejecutes el programa, obtendrás una palabra aleatoria diferente de la lista vehiculos.'''