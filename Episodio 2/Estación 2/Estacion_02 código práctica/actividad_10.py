'''Ordenar de mayor a menor'''
lista = [ 45, 31, 70, 11, 2, 93, 16, 85, 39, 94, 46, 88, 94, 7, 51, 93, 53, 95, 5, 97, 11, 64, 6, 31, 51, 27, 7, 14, 11, 65, 65, 73, 39, 40, 72, 31, 32, 83, 9, 4, 65, 51, 89, 52, 30, 20, 45, 96, 57, 88, 75, 97, 98, 14, 83, 1, 78, 25, 17, 98, 99, 16, 77, 98, 18, 50, 17, 67, 18, 0, 48, 23, 72, 2, 26, 25, 50, 44, 47, 51, 80, 81, 22, 53, 79, 81, 19, 19, 95, 84, 59, 50, 25, 25, 8, 36, 5, 97, 92]
lista_ordenada_01 = sorted(lista)
print(f"Lista ordenada de menor a mayor : {lista_ordenada_01}")

lista_ordenada_02 = sorted(lista, reverse=True)
print(f"Lista ordenada de mayor a menor : {lista_ordenada_02}")
