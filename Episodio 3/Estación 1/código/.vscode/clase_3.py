# Otras funcionalidades de Pandas:
# A partir del dataset de datos.gob.ar del bioetanol aprenderemos algunas funcionalidades (atributos) mas de Pandas.

# Creamos DataFrame:

import pandas as pd
import matplotlib.pyplot as plt
url = "https://datos.magyp.gob.ar/dataset/18e03919-2828-4e21-b7ab-4fe340b411ea/resource/edeffcb4-1ed7-4eb0-ab7e-3e85b8854afb/download/serie_de_tiempo_produccion_por_insumo_bioetanol.csv"
datos = pd.read_csv(url,header=0, names=['Fecha','CaniaAzucar','Maiz'])


#los siguientes ejemplos devuelven valores de distintos tipos (types) de datos

print(datos.values)


# Devuelve tamaño del DataFrame

print(datos.size)


# Indica rando de indices, es iterable:

print(datos.index)


# Devuelve columnas del DataFrame:

print(datos.columns)

# Podemos indicarle la columna con la que queremos trabajar de las siguientes dos maneras, la primera no es iterable y la segunda es iterable:

datos.Fecha

datos["Fecha"]

datos.CaniaAzucar

datos["CaniaAzucar"]

datos.Maiz

datos["Maiz"]

datos[["Fecha","Maiz"]] #Accedo a dos columnas a la vez

# Acceso a datos de forma similar a las listas:

# datos[1][0:12]
datos.iloc[0][0:12]

# Cambio de type de variable:

#datos = datos.apply(pd.to_numeric, errors='coerce')
#datos.astype('int')

# Devuelve primer fila:

# Devuelve ultima fila

datos.T  #transpuesta



