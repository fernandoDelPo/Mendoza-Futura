import pandas as pd
import matplotlib.pyplot as plt

# Cargar el archivo CSV en un DataFrame
url = "archivos/personas2.csv"  # Reemplaza 'ruta_al_archivo' con la ubicación real de tu archivo
datos = pd.read_csv(url)

# Crear un histograma de edades
plt.figure(figsize=(8, 6))
plt.hist(datos['Edad'], bins=10, edgecolor='k', color='skyblue')
plt.title('Distribución de Edades')
plt.xlabel('Edad')
plt.ylabel('Cantidad de Personas')
plt.grid(axis='y', linestyle='--', alpha=0.7)
plt.show()


# Crear un gráfico de líneas de la distribución de edades
plt.figure(figsize=(8, 6))
plt.plot(datos['Edad'], marker='o', linestyle='-', color='blue')
plt.title('Distribución de Edades')
plt.xlabel('Índice de Personas')
plt.ylabel('Edad')
plt.grid(axis='y', linestyle='--', alpha=0.7)
plt.show()
