import pandas as pd
import matplotlib.pyplot as plt

# Cargar el archivo CSV en un DataFrame (asegúrate de reemplazar 'ruta_al_archivo' con la ubicación real del archivo)
url = "archivos/personas2.csv"
datos = pd.read_csv(url)

# *************************--------COLOR DE OJOS------**************************


# Gráfico de torta para el color de ojos:

#La siguiente línea de código calcula la cantidad de personas que tienen cada color de ojos en tus datos y almacena esta información en la variable color_de_ojos_counts. 
# value_counts() es un método de Pandas que cuenta las ocurrencias de valores únicos en una columna.
color_de_ojos_counts = datos['Color de Ojos'].value_counts()

# La siguiente línea Aquí se crea una figura de Matplotlib con un tamaño de 8x8 pulgadas para alojar el gráfico de torta.
plt.figure(figsize=(8, 8))

# La siguiente línea de código crea el gráfico de torta en sí. Los argumentos son los siguientes:
# 1- color_de_ojos_counts: Los valores de las porciones del gráfico se toman de la variable color_de_ojos_counts, que contiene las cantidades de cada color de ojos.
# 2- labels=color_de_ojos_counts.index: Las etiquetas para cada porción del gráfico se establecen como los índices de color_de_ojos_counts, que son los colores de ojos únicos.
# 3- autopct='%1.1f%%': Esta parte formatea las etiquetas que se muestran en cada porción del gráfico para que muestren el porcentaje correspondiente de cada categoría con un decimal.
# 4- startangle=140: Esto establece el ángulo de inicio para el primer segmento del gráfico, lo que puede hacer que el gráfico se vea inclinado. En este caso, se establece en 140 grados para que el gráfico comience desde un ángulo ligeramente diferente.
plt.pie(color_de_ojos_counts, labels=color_de_ojos_counts.index, autopct='%1.1f%%', startangle=140)

# Se agrega un título al gráfico de torta para indicar de qué se trata.
plt.title('Distribución por Color de Ojos')


plt.axis('equal')  # Para asegurarse de que el gráfico sea un círculo.

#Mostramos el gráfico
plt.show()

# *************************--------EDADES--------**************************

# Crear un gráfico de torta para la distribución de edades
plt.figure(figsize=(8, 8))
edad_counts = datos['Edad'].value_counts()
plt.pie(edad_counts, labels=edad_counts.index, autopct='%1.1f%%', startangle=90)
plt.title('Distribución por Edad')
plt.axis('equal')
plt.show()

# *************************-------PROVINCIAS---------**************************

# Gráfico de torta para la provincia de residencia
provincia_counts = datos['Provincia'].value_counts()
plt.figure(figsize=(10, 10))
plt.pie(provincia_counts, labels=provincia_counts.index, autopct='%1.1f%%', startangle=90)
plt.title('Distribución por Provincia de Residencia')
plt.axis('equal')
plt.show()

# *************************-------PESO---------**************************

# Gráfico de torta para el peso (asumiendo que hay categorías de peso)
peso_counts = datos['Peso'].value_counts()
plt.figure(figsize=(8, 8))
plt.pie(peso_counts, labels=peso_counts.index, autopct='%1.1f%%', startangle=90)
plt.title('Distribución por Peso')
plt.axis('equal')
plt.show()

# *************************--------NOMBRES--------**************************

# Obtener los 5 nombres más repetidos
nombres_mas_comunes = datos['Nombre'].value_counts().head(5)

# Calcular la suma de las frecuencias de los nombres menos comunes
otros_nombres_count = datos['Nombre'].value_counts().tail(-5).sum()

# Crear un nuevo DataFrame que incluya los 5 nombres más repetidos y "Otros"
nombres_df = pd.DataFrame({
    'Nombre': nombres_mas_comunes.index.tolist() + ['Otros'],
    'Cantidad': nombres_mas_comunes.tolist() + [otros_nombres_count]
})

# Gráfico de torta para los nombres
plt.figure(figsize=(8, 8))
plt.pie(nombres_df['Cantidad'], labels=nombres_df['Nombre'], autopct='%1.1f%%', startangle=90)
plt.title('Distribución por Nombres (Top 5 + Otros)')
plt.axis('equal')
plt.show()
