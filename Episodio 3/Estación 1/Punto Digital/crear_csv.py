#Creando un cvs con python:
''' Primero, importamos la librería csv para poder trabajar con archivos CSV en Python.

Luego, creamos una lista de listas llamada personas que contiene los datos que queremos escribir en el archivo CSV. En este caso, cada lista interna representa una fila en el archivo CSV y contiene los datos de una persona.

Después, abrimos el archivo personas.csv en modo escritura y creamos un objeto writer utilizando la función csv.writer(). Especificamos el delimitador de ";" para separar los campos en el archivo CSV.

Finalmente, utilizamos la función writer.writerows() para escribir los datos de la lista personas en el archivo CSV. La función writerows() es similar a writerow(), pero acepta una lista de listas para escribir varias filas a la vez. ''' 
import pandas as pd
import csv 
personas = [
    ["Fernando", "Del Pozzi", "Mendoza"],
    ["Maria", "Perez", "San Juan"],
    ["Lionel", "Messi", "Miami"]
]
# Abre el archivo "personas.csv" en modo escritura ('w') con newline='' para evitar líneas en blanco adicionales
with open("personas02.csv", "w", newline='') as file:
    conversor = csv.writer(file, delimiter=',')  # Crea un escritor de CSV con coma como delimitador
    conversor.writerows(personas)  # Escribe los datos de la lista de personas en el archivo CSV

# Imprime la lista de personas
print(personas)

print(personas)
print("\n       *** --- *** --- *** \n" )
datos = pd.read_csv("personas02.csv")
print(datos, "\n")

