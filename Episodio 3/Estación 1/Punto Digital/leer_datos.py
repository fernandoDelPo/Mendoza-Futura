import pandas as pd


#leer datos desde la url:

url ="https://datos.magyp.gob.ar/dataset/18e03919-2828-4e21-b7ab-4fe340b411ea/resource/edeffcb4-1ed7-4eb0-ab7e-3e85b8854afb/download/serie_de_tiempo_produccion_por_insumo_bioetanol.csv"
datos = pd.read_csv(url)
print(datos, "\n------------------------------")

# leer datos desde un archivo guardado en nuestra PC
datos02 = pd.read_csv("serie_de_tiempo_produccion_por_insumo_bioetanol.csv")
print(datos02, "\n------------------------------")

datos = pd.read_csv("personas.csv")
print(datos)