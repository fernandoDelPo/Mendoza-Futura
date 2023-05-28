import pandas as pd

# Leer el archivo CSV
df = pd.read_csv('Formulario Proyecto estación 1 (semilla).csv')

# Eliminar la palabra "años" y los espacios en blanco de la columna 1
df[' 1. Ingresa tu edad:'] = df[' 1. Ingresa tu edad:'].str.replace('años', '').str.strip()

# Convertir la columna 1 a tipo numérico
df[' 1. Ingresa tu edad:'] = pd.to_numeric(df[' 1. Ingresa tu edad:'], errors='coerce')

# Calcular el promedio de la columna 1
promedio = df[' 1. Ingresa tu edad:'].mean()

# Guardar el resultado en un archivo de texto
with open('datos/promedio_edad.txt', 'w') as file:
    file.write(f"El promedio de edad de todos los encuestados es:  {promedio} anios")
