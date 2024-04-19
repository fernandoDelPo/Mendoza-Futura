import pandas as pd
import matplotlib.pyplot as plt

# Cargar el archivo CSV en un DataFrame
url = "archivos/personas2.csv"  # Reemplaza 'ruta_al_archivo' con la ubicación real de tu archivo
datos = pd.read_csv(url)

# Crear un gráfico de barras de personas por provincia
provincias = datos['Provincia'].value_counts()
plt.figure(figsize=(10, 6))
provincias.plot(kind='bar', color='salmon', edgecolor='k')
plt.title('Cantidad de Personas por Provincia')
plt.xlabel('Provincia')
plt.ylabel('Cantidad de Personas')
plt.xticks(rotation=45)
plt.grid(axis='y', linestyle='--', alpha=0.7)
plt.show()
