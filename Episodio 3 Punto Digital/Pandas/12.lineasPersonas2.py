import pandas as pd
import matplotlib.pyplot as plt

# Cargar el archivo CSV en un DataFrame (asegúrate de reemplazar 'ruta_al_archivo' con la ubicación real del archivo)
url = "archivos/personas2.csv"
datos = pd.read_csv(url)

# *************************--------COLOR DE OJOS (LÍNEAS)------**************************

# Crear un gráfico de líneas para la distribución de colores de ojos

# Obtener la cuenta de cada color de ojos y almacenarla en color_de_ojos_counts
color_de_ojos_counts = datos['Color de Ojos'].value_counts()

# Crear una figura de Matplotlib con un tamaño de 10x6 pulgadas para el gráfico de líneas
plt.figure(figsize=(10, 6))

# Crear el gráfico de líneas utilizando plot(kind='line')
# - kind='line': Indica que queremos un gráfico de líneas.
# - color='skyblue': Establece el color de las líneas en azul cielo.
color_de_ojos_counts.sort_index().plot(kind='line', marker='o', color='skyblue')

# Establecer el título del gráfico
plt.title('Distribución por Color de Ojos (Líneas)')

# Etiquetar el eje x (color de ojos)
plt.xlabel('Color de Ojos')

# Etiquetar el eje y (cantidad de personas)
plt.ylabel('Cantidad de Personas')

# Rotar las etiquetas del eje x para mejorar la legibilidad
plt.xticks(rotation=45)

# Agregar una cuadrícula en el eje y con líneas discontinuas y opacidad
plt.grid(axis='y', linestyle='--', alpha=0.7)

# Mostrar el gráfico de líneas
plt.show()


# *************************--------EDADES (LÍNEAS)--------**************************

# Crear un gráfico de líneas para la distribución de edades
plt.figure(figsize=(12, 6))
edad_counts = datos['Edad'].value_counts().sort_index()
edad_counts.plot(kind='line', marker='o', color='lightcoral')
plt.title('Distribución por Edad (Líneas)')
plt.xlabel('Edad')
plt.ylabel('Cantidad de Personas')
plt.grid(axis='y', linestyle='--', alpha=0.7)
plt.show()

# *************************-------PROVINCIAS (LÍNEAS)---------**************************

# Crear un gráfico de líneas para la distribución por provincia de residencia
plt.figure(figsize=(12, 6))
provincia_counts = datos['Provincia'].value_counts().sort_index()
provincia_counts.plot(kind='line', marker='o', color='gold')
plt.title('Distribución por Provincia de Residencia (Líneas)')
plt.xlabel('Provincia')
plt.ylabel('Cantidad de Personas')
plt.xticks(rotation=45)
plt.grid(axis='y', linestyle='--', alpha=0.7)
plt.show()

# *************************-------PESO (LÍNEAS)---------**************************

# Crear un gráfico de líneas para la distribución de peso (asumiendo categorías de peso)
plt.figure(figsize=(10, 6))
peso_counts = datos['Peso'].value_counts().sort_index()
peso_counts.plot(kind='line', marker='o', color='lightgreen')
plt.title('Distribución por Peso (Líneas)')
plt.xlabel('Peso')
plt.ylabel('Cantidad de Personas')
plt.xticks(rotation=45)
plt.grid(axis='y', linestyle='--', alpha=0.7)
plt.show()

# *************************--------NOMBRES (LÍNEAS)--------**************************

# Crear un gráfico de líneas para los nombres (Top 5 + Otros)
plt.figure(figsize=(12, 6))
nombres_mas_comunes = datos['Nombre'].value_counts().head(5)
otros_nombres_count = datos['Nombre'].value_counts().tail(-5).sum()
nombres_df = pd.DataFrame({
    'Nombre': nombres_mas_comunes.index.tolist() + ['Otros'],
    'Cantidad': nombres_mas_comunes.tolist() + [otros_nombres_count]
})
nombres_df.sort_values(by='Nombre').plot(kind='line', x='Nombre', y='Cantidad', marker='o', color='lightblue')
plt.title('Distribución por Nombres (Top 5 + Otros) (Líneas)')
plt.xlabel('Nombre')
plt.ylabel('Cantidad de Personas')
plt.grid(axis='y', linestyle='--', alpha=0.7)
plt.show()
