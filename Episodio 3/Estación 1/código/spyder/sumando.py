#Sumando
import pandas as pd

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
print(df['points'].sum())
#resultado de la columna points = 182
#La función sum () también excluirá NA de forma predeterminada. Por ejemplo, si encontramos la suma de la columna «rebotes», el primer valor de «NaN» simplemente se excluirá del cálculo:
print(df['rebounds'].sum())
#resultado = 72.0

#Podemos encontrar la suma de varias columnas usando la siguiente sintaxis:
# Calculamos la suma para ciertas filas del DataFrame
print(df[['rebounds', 'points']].sum())
# Resultados: rebounds 72.0, points 182.0, dtype: float64

# Encontramos la suma para todas las columnas del DataFrame
print(df.sum())
#Resultado: rating      853.0, points      182.0, assists      68.0, rebounds     72.0, dtype: float64

