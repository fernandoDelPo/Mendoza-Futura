import pandas as pd

# Cargar el archivo CSV
df = pd.read_csv("archivos/productos.csv")

# Contar la cantidad de productos totales
cantidad_total_productos = df['Cantidad'].sum()
print(f"Cantidad total de productos: {cantidad_total_productos}")

# Buscar un producto por palabra en el nombre
palabra_busqueda = "Laptop"  # Cambia esta palabra según lo que desees buscar
productos_por_palabra = df[df['Nombre'].str.contains(palabra_busqueda, case=False)] #Filtra el DataFrame "df" para encontrar los productos cuyo nombre contiene la palabra clave definida en "palabra_busqueda". La opción "case=False" indica que la búsqueda es insensible a mayúsculas y minúsculas.
print(f"Productos que contienen '{palabra_busqueda}' en el nombre:\n{productos_por_palabra[['Nombre', 'Marca']]}")

# Contar la cantidad de productos por marca
productos_por_marca = df.groupby('Marca')['Cantidad'].sum()
print("Cantidad de productos por marca:")
print(productos_por_marca)

# Calcular el precio total de todos los productos
df['Precio_Total'] = df['Precio'] * df['Cantidad']
precio_total_todos_productos = df['Precio_Total'].sum()
print(f"Precio total de todos los productos: ${precio_total_todos_productos:.2f}")

# Calcular el precio total por producto
df['Precio_Total_Producto'] = df['Precio'] * df['Cantidad']
print("Precio total por producto:")
print(df[['Nombre', 'Precio_Total_Producto']])
