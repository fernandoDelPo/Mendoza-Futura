import pandas as pd
import matplotlib.pyplot as plt
url = "https://datos.magyp.gob.ar/dataset/18e03919-2828-4e21-b7ab-4fe340b411ea/resource/edeffcb4-1ed7-4eb0-ab7e-3e85b8854afb/download/serie_de_tiempo_produccion_por_insumo_bioetanol.csv"
datos = pd.read_csv(url,header=0, names=['Fecha','CaniaAzucar','Maiz'])

# Agregamos una columna 'Año' al DataFrame
datos['Año'] = pd.DatetimeIndex(datos['Fecha']).year

# Agrupamos los datos por año y sumamos las producciones mensuales para cada insumo
produccion_anual = datos.groupby('Año').sum()[['CaniaAzucar', 'Maiz']]

# Mostramos la producción anual para cada insumo
print('Producción anual de bioetanol:')
print(produccion_anual)

# Creamos una figura y un eje de barras
fig, ax = plt.subplots()

# Creamos las barras para la producción anual de cada insumo
ax.bar(produccion_anual.index, produccion_anual['CaniaAzucar'], width=0.4, color='b', label='Caña de Azúcar')
ax.bar(produccion_anual.index + 0.4, produccion_anual['Maiz'], width=0.4, color='r', label='Maíz')

# Configuramos el eje X
ax.set_xticks(produccion_anual.index + 0.2)
ax.set_xticklabels(produccion_anual.index)
ax.tick_params(axis='x', labelrotation=45)

# Configuramos la leyenda y las etiquetas de los ejes
ax.legend()
ax.set_xlabel('Año')
ax.set_ylabel('Bioetanol [m3]')

# Mostramos el gráfico de barras
plt.show()
