import pandas as pd

#Leer desde un archivo en la misma carpeta

datos = pd.read_csv("archivos/serie_de_tiempo_produccion_por_insumo_bioetanol.csv")
print(datos)