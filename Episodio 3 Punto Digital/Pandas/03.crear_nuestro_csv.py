# Primero Importamos el módulo csv, que nos permite trabajar con archivos CSV en Python. Es quien nos permitirá leer la lista y crear con sus datos un CSV.
import csv 

# Definimos una lista de listas llamada "personas" que contiene información de personas.
personas = [
    ["Fernando", "Del Pozzi", "Mendoza"],
    ["Maria", "Perez", "San Juan"],
    ["Lionel", "Messi", "Miami"]
]

# Abrimos un archivo CSV en modo escritura ("w") con el nombre "personas.csv" y se guardará dentro de la carpeta "archivos".
# Usamos 'newline='' para asegurarnos de que las líneas se escriban correctamente en diferentes sistemas operativos.
with open("archivos/personas.csv", "w", newline='') as file:
    # Creamos un objeto escritor de CSV y especificamos que el delimitador sea la coma (',').
    writer = csv.writer(file, delimiter=',')
    
    # Usamos el método "writerows" para escribir todas las filas de la lista "personas" en el archivo CSV.
    writer.writerows(personas)

# Imprimimos la lista "personas" para verificar su contenido (esto no afecta el archivo CSV).
print(personas)
