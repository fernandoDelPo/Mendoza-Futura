
import pandas as pd

#Leer desde una url
url = "https://datos.magyp.gob.ar/dataset/18e03919-2828-4e21-b7ab-4fe340b411ea/resource/edeffcb4-1ed7-4eb0-ab7e-3e85b8854afb/download/serie_de_tiempo_produccion_por_insumo_bioetanol.csv"
datos = pd.read_csv(url)
print(datos)

print("-------------------------------")

#Leer desde un archivo en la misma carpeta

datos_2 = pd.read_csv("serie_de_tiempo_produccion_por_insumo_bioetanol.csv")
print(datos_2)


# datos_3 = pd.read_csv("Libro_2.csv")
# print(datos_3)

url = "https://datos.magyp.gob.ar/dataset/18e03919-2828-4e21-b7ab-4fe340b411ea/resource/edeffcb4-1ed7-4eb0-ab7e-3e85b8854afb/download/serie_de_tiempo_produccion_por_insumo_bioetanol.csv"
datos_3 = pd.read_csv(url, header=0, names=['Fecha','Cania Azucar','Maiz'])
print(datos_3)

#Con nrows establecemos la cantidad de filas o datos que queremos analizar:
url = "https://archivos-datos.transporte.gob.ar/upload/Sube/total-usuarios-por-dia.csv"
datos2017 = pd.read_csv(url,nrows=13, header=None)
print(datos2017)
#Resultado: imprime solo los 12 meses del año 2017.

#Sumando

url ="https://datos.magyp.gob.ar/dataset/18e03919-2828-4e21-b7ab-4fe340b411ea/resource/edeffcb4-1ed7-4eb0-ab7e-3e85b8854afb/download/serie_de_tiempo_produccion_por_insumo_bioetanol.csv"
datos = pd.read_csv(url,header=0, names=['Fecha','CaniaAzucar','Maiz'])
print(datos.sum()) #hace sumatoria de todas las columnas (las fechas no las puede sumar porque siguen siendo str)
print("\n")
print(f"Total de bioetanol producido con cania de azucar: {datos['CaniaAzucar'].sum()} m3")
print(f"Total de bioetanol producido con maiz: {datos['Maiz'].sum()} m3")

#Supongamos que tenemos el siguiente DataFrame de panda
import pandas as pd
import numpy as np

# Creamos el DataFrame
df = pd.DataFrame({'rating': [90, 85, 82, 88, 94, 90, 76, 75, 87, 86],
                   'points': [25, 20, 14, 16, 27, 20, 12, 15, 14, 19],
                   'assists': [5, 7, 7, 8, 5, 7, 6, 9, 9, 5],
                   'rebounds': [np.nan, 8, 10, 6, 6, 9, 6, 10, 10, 7]})

#Podemos encontrar la suma de la columna titulada «puntos» usando la siguiente sintaxis:
df['points'].sum()
#resultado de la columna points = 182
#La función sum () también excluirá NA de forma predeterminada. Por ejemplo, si encontramos la suma de la columna «rebotes», el primer valor de «NaN» simplemente se excluirá del cálculo:
df['rebounds'].sum()
#resultado = 72.0

#Podemos encontrar la suma de varias columnas usando la siguiente sintaxis:
# Calculamos la suma para ciertas filas del DataFrame
df[['rebounds', 'points']].sum()
# Resultados: rebounds 72.0, points 182.0, dtype: float64

# Encontramos la suma para todas las columnas del DataFrame
df.sum()
#Resultado: rating      853.0, points      182.0, assists      68.0, rebounds     72.0, dtype: float64

#Creando un cvs con python:
''' Primero, importamos la librería csv para poder trabajar con archivos CSV en Python.

Luego, creamos una lista de listas llamada personas que contiene los datos que queremos escribir en el archivo CSV. En este caso, cada lista interna representa una fila en el archivo CSV y contiene los datos de una persona.

Después, abrimos el archivo personas.csv en modo escritura y creamos un objeto writer utilizando la función csv.writer(). Especificamos el delimitador de ";" para separar los campos en el archivo CSV.

Finalmente, utilizamos la función writer.writerows() para escribir los datos de la lista personas en el archivo CSV. La función writerows() es similar a writerow(), pero acepta una lista de listas para escribir varias filas a la vez. ''' 

import csv 
personas = [
    ["Fernando", "Del Pozzi", "Mendoza"],
    ["Maria", "Perez", "San Juan"],
    ["Lionel", "Messi", "Miami"]
]
with open("personas.csv", "w", newline='') as file:
    writer = csv.writer(file, delimiter= ',')
    writer.writerows(personas)

print(personas)

#
print('values', datos.values)