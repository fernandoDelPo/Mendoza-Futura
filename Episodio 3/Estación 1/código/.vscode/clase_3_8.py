import pandas as pd
import matplotlib.pyplot as plt


datos = pd.read_csv("olivo-larioja-catamarca-2020.csv", encoding='iso-8859-1')

print(datos)

# Agrupar los datos por provincia y sumar la superficie
produccion_por_provincia = datos.groupby("provincia_nombre")["superficie_ha"].sum().reset_index()
produccion_por_provincia.rename(columns={"superficie_ha": "produccion_total"}, inplace=True)

# Crear el gráfico de barras
plt.bar(produccion_por_provincia["provincia_nombre"], produccion_por_provincia["produccion_total"])
plt.title("Producción total por provincia")
plt.xlabel("Provincia")
plt.ylabel("Producción total (ha)")
plt.show()

''' Este código generará un gráfico de barras que muestra la producción total de olivos en cada departamento de la provincia de Catamarca, 
con el eje x mostrando los nombres de los departamentos y el eje y mostrando la producción en hectáreas.'''

# Filtrar los datos solo para la provincia de Catamarca
df_catamarca = datos[datos['provincia_nombre'] == 'Catamarca']

# Agrupar los datos por departamento y sumar la superficie_ha de cada departamento
produccion_por_departamento = df_catamarca.groupby('departamento_nombre')['superficie_ha'].sum()

# Crear un gráfico de barras de la producción por departamento
produccion_por_departamento.plot(kind='bar')

# Agregar títulos y etiquetas de eje
plt.title('Producción total por departamento en Catamarca')
plt.xlabel('Departamento')
plt.ylabel('Superficie (hectáreas)')

# Mostrar el gráfico
plt.show()