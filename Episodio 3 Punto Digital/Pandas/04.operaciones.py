import pandas as pd

# Cargar el archivo CSV en un DataFrame
df = pd.read_csv('archivos/personas2.csv')

# Calcular el promedio de edad
promedio_edad = df['Edad'].mean()

print(f"El promedio de edad es: {promedio_edad} anios")

# Encontrar la mayor edad
mayor_edad = df['Edad'].max()

# Encontrar la menor edad
menor_edad = df['Edad'].min()

print(f"La mayor edad es: {mayor_edad} anios.")
print(f"La menor edad es: {menor_edad} anios.")

# Encontrar el índice de la mayor edad
indice_max_edad = df['Edad'].idxmax()

# Encontrar el índice de la menor edad
indice_min_edad = df['Edad'].idxmin()

# Obtener los datos de la persona de mayor edad // Gracias a loc() podemos acceder a todas las columnas del indice obtenido anteriormente, por ejemplo Nombre, Apellido, Provincia, etc
persona_mayor_edad = df.loc[indice_max_edad]

# Obtener los datos de la persona de menor edad
persona_menor_edad = df.loc[indice_min_edad]

print("Persona de mayor edad:")
print(f"Nombre: {persona_mayor_edad['Nombre']}")
print(f"Apellido: {persona_mayor_edad['Apellido']}")
print(f"Provincia: {persona_mayor_edad['Provincia']}")
print(f"Edad: {persona_mayor_edad['Edad']} años\n")

print("Persona de menor edad:")
print(f"Nombre: {persona_menor_edad['Nombre']}")
print(f"Apellido: {persona_menor_edad['Apellido']}")
print(f"Provincia: {persona_menor_edad['Provincia']}")
print(f"Edad: {persona_menor_edad['Edad']} anios")



# Contar cuántas personas tienen ojos celestes
conteo_ojos_azules = df['Color de Ojos'].value_counts().get('Azul', 0)

print(f"El numero de personas con ojos azules es: {conteo_ojos_azules}")


# Contar la cantidad de personas por provincia y ordenar de mayor a menor
conteo_provincias = df['Provincia'].value_counts().sort_values(ascending=False)

print("Cantidad de personas por provincia (de mayor a menor):")
print(conteo_provincias)


# Filtrar las filas donde la columna "Lentes" es igual a "Si"
personas_con_lentes = df[df["Lentes"] == "Sí"]

# Contar cuántas personas usan lentes
cantidad_personas_con_lentes = len(personas_con_lentes)

print("Cantidad de personas que usan lentes:", cantidad_personas_con_lentes)