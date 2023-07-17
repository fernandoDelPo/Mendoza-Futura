import random

def generar_lista_aleatoria(cantidad):
    lista_aleatoria = [random.randint(0, 1000) for _ in range(cantidad)]
    return lista_aleatoria

def main():
    cantidad_numeros = 100
    lista_aleatoria = generar_lista_aleatoria(cantidad_numeros)

    print("Lista de números enteros aleatorios:")
    print(lista_aleatoria)

if __name__ == "__main__":
    main()


'''COMENTARIOS: En este código, hemos definido la función generar_lista_aleatoria(cantidad) 
que toma un parámetro cantidad y genera una lista con esa cantidad de números enteros aleatorios 
en el rango de 0 a 1000 utilizando la función random.randint(0, 1000).
En la función main(), especificamos que queremos generar una lista con 100 números enteros 
aleatorios (puedes cambiar este número cambiando el valor de cantidad_numeros). Luego, llamamos a la 
función generar_lista_aleatoria(cantidad_numeros) para obtener la
lista con los números aleatorios y la mostramos en pantalla.'''