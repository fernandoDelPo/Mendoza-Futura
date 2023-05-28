import pandas as pd

url = "https://datos.magyp.gob.ar/dataset/18e03919-2828-4e21-b7ab-4fe340b411ea/resource/edeffcb4-1ed7-4eb0-ab7e-3e85b8854afb/download/serie_de_tiempo_produccion_por_insumo_bioetanol.csv"
datos_3 = pd.read_csv(url, header=0, names=['Fecha','Cania Azucar','Maiz'])
print(datos_3)

#Con nrows establecemos la cantidad de filas o datos que queremos analizar:
url = "https://archivos-datos.transporte.gob.ar/upload/Sube/total-usuarios-por-dia.csv"
datos2017 = pd.read_csv(url,nrows=13, header=None)
print(datos2017)
#Resultado: imprime solo los 12 meses del año 2017.

