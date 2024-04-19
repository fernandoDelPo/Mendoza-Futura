# Actividad: Produccion de vino por provincia (2017):

import pandas as pd
import matplotlib.pyplot as plt

urlProducc = "https://datos.magyp.gob.ar/dataset/e217791c-e898-4204-8a62-63273cf81ef7/resource/2a928aef-7f9e-4335-bf3d-a1c5eab49037/download/serie-tiempo-produccion-de-uvas-de-argentina-2012-2017.csv"

datos = pd.read_csv(urlProducc, header=0, names=['Fecha', 'produccion_bs_as', 'produccion_catamarca', 'produccion_chubut', 'produccion_cordoba', 'produccion_entre_rios', 'produccion_jujuy', 'produccion_la_pampa', 'produccion_la_rioja', 'produccion_mendoza', 'produccion_misiones', 'produccion_neuquen', 'produccion_rio_negro', 'produccion_salta', 'produccion_san_juan', 'produccion_san_luis', 'produccion_tucuman'])


# Buscamos los valores faltantes NaN (NaN, que "Not a Number") en un DataFrame de Pandas y los llenamos con el valor 0. 
# Esto se hace para manejar los datos faltantes y asegurarse de que todas las celdas del DataFrame tengan un valor numérico válido.
datos = datos.fillna(0)

# se filtran los datos del año 2017
datos_2017 = datos.loc[datos['Fecha'].astype(str).str.contains('2017')]

# se crea una lista con los nombres de las provincias
provincias = ['Bs. As.', 'Catamarca', 'Chubut', 'Córdoba', 'Entre Ríos', 'Jujuy', 'La Pampa', 'La Rioja', 'Mendoza', 'Misiones', 'Neuquén', 'Río Negro', 'Salta', 'San Juan', 'San Luis', 'Tucumán']

# se calcula la producción total por provincia en 2017
# datos_2017.sum(): Esta parte del código realiza una suma de todas las columnas en el DataFrame datos_2017. El método sum() de Pandas suma los valores en cada columna numérica del DataFrame. Sin embargo, en este caso, 
# que se ha utilizado una indexación [1:] para excluir la primera columna.
# [1:]: La indexación [1:] se utiliza para seleccionar todas las columnas del DataFrame a partir de la segunda columna en adelante. Esto se hace para excluir la primera columna, que contiene el id_país que no nos interesa.
# .tolist(): Finalmente, .tolist() convierte el resultado de la suma en una lista de Python. Esto es útil si deseas trabajar con los valores totales en forma de lista en lugar de mantenerlos en un objeto Pandas.

produccion_por_provincia = datos_2017.sum()[1:].tolist()

# se muestra el gráfico de torta
plt.subplot(1, 2, 1)
plt.title('Producción de vino por provincia en 2017')
plt.pie(produccion_por_provincia, labels=provincias, autopct='%1.1f%%')

# se muestra el gráfico de barras
plt.subplot(1, 2, 2)
plt.title('Producción de vino por provincia en 2017')
plt.bar(provincias, produccion_por_provincia, color=['#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b', '#e377c2', '#7f7f7f', '#bcbd22', '#17becf', '#ff69b4', '#ff1493', '#00bfff', '#ba55d3', '#90ee90', '#ffd700'])
plt.xticks(rotation=90)

# se agrega la columna con los nombres de las provincias
plt.subplots_adjust(wspace=0.6)
plt.subplots_adjust(bottom=0.1, top=0.9)
plt.ylabel('Produccion en [qqm] quintal metrico (100 kg)')
plt.xlabel('Provincias')
ax2 = plt.subplot

plt.show()


''' # Produccion de vino por provincia correspondiente a la suma de todos los años: 

import pandas as pd
import matplotlib.pyplot as plt

urlProducc = "https://datos.magyp.gob.ar/dataset/e217791c-e898-4204-8a62-63273cf81ef7/resource/2a928aef-7f9e-4335-bf3d-a1c5eab49037/download/serie-tiempo-produccion-de-uvas-de-argentina-2012-2017.csv"

datos = pd.read_csv(urlProducc, header=0, names=['Fecha', 'produccion_bs_as', 'produccion_catamarca', 'produccion_chubut', 'produccion_cordoba', 'produccion_entre_rios', 'produccion_jujuy', 'produccion_la_pampa', 'produccion_la_rioja', 'produccion_mendoza', 'produccion_misiones', 'produccion_neuquen', 'produccion_rio_negro', 'produccion_salta', 'produccion_san_juan', 'produccion_san_luis', 'produccion_tucuman'])

# se eliminan las filas con valores nulos
datos = datos.dropna()

# se crea una lista con los nombres de las provincias
provincias = ['Bs. As.', 'Catamarca', 'Chubut', 'Córdoba', 'Entre Ríos', 'Jujuy', 'La Pampa', 'La Rioja', 'Mendoza', 'Misiones', 'Neuquén', 'Río Negro', 'Salta', 'San Juan', 'San Luis', 'Tucumán']

# se calcula la producción total por provincia
produccion_por_provincia = datos.sum()[1:].tolist()

# se muestra el gráfico de torta
plt.subplot(1, 2, 1)
plt.title('Producción de vino por provincia')
plt.pie(produccion_por_provincia, labels=provincias, autopct='%1.1f%%')

# se muestra el gráfico de barras
plt.subplot(1, 2, 2)
plt.title('Producción de vino por provincia')
plt.bar(provincias, produccion_por_provincia, color=['#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b', '#e377c2', '#7f7f7f', '#bcbd22', '#17becf', '#ff69b4', '#ff1493', '#00bfff', '#ba55d3', '#90ee90', '#ffd700'])
plt.xticks(rotation=90)

# se agrega la columna con los nombres de las provincias
plt.subplots_adjust(wspace=0.6)
plt.subplots_adjust(bottom=0.1, top=0.9)
ax2 = plt.subplot(1, 2, 2)
ax2.set_ylabel('Producción')
ax2.yaxis.set_label_position("right")
ax2.set_xticklabels(provincias)

plt.show()

'''