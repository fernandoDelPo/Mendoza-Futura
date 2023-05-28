import pandas as pd # Importa la librería pandas, que proporciona estructuras de datos y herramientas de análisis de datos eficientes en Python.
import matplotlib.pyplot as plt # Importa el módulo pyplot de la librería matplotlib, que proporciona una interfaz de alto nivel para crear gráficos y visualizaciones.
import matplotlib.cm as cm # Importa el módulo cm (colormap) de la librería matplotlib, que proporciona colormaps para asignar colores a los gráficos.
import matplotlib.colors as colors #  Importa el módulo colors de la librería matplotlib, que proporciona funciones y clases para trabajar con colores en gráficos y visualizaciones.

# Leemos el archivo CSV
df = pd.read_csv("Formulario Proyecto estación 1 (semilla).csv")

# Eliminamos la palabra "años" y los espacios en blanco de la columna 1
df[' 1. Ingresa tu edad:'] = df[' 1. Ingresa tu edad:'].str.replace('años', '').str.strip()

# Creamos una lista con las opciones únicas de la columna 13
opciones_columna_13 = df['13. ¿A quién o cómo votarías en las siguientes elecciones PASO (Primarias, Abiertas, Simultáneas y Obligatorias)​ ?'].unique().tolist()

# Inicializamos una variable para luego almacenar los resultados
resultados = {}

# Iteraramos con un bucle "for" por las filas del DataFrame (df)
for index, row in df.iterrows():
    edad = int(row[' 1. Ingresa tu edad:'])
    voto = row['13. ¿A quién o cómo votarías en las siguientes elecciones PASO (Primarias, Abiertas, Simultáneas y Obligatorias)​ ?']
    
    # Verificamos si la opción de voto está en el diccionario de resultados
    if voto in resultados:
        resultados[voto]['suma_edades'] += edad
        resultados[voto]['contador'] += 1
    else:
        resultados[voto] = {'suma_edades': edad, 'contador': 1}

# Calculamos el promedio de las edades para cada opción de voto
for voto, valores in resultados.items():
    suma_edades = valores['suma_edades']
    contador = valores['contador']
    resultados[voto]['promedio_edades'] = round(suma_edades / contador)  # Redondear el promedio de edades

# Mostramos los resultados por la terminal
for voto, valores in resultados.items():
    print(f"Opción de voto: {voto}")
    print(f"Promedio de edades: {valores['promedio_edades']}")

# Creamos un gráfico de barras con colores diferentes y que los mismos no se repitan
df_resultados = pd.DataFrame(resultados).transpose()

# Generarmos una lista con colores que no se repitan
num_barras = len(df_resultados)
cmap = cm.get_cmap('tab20')
norm = colors.Normalize(vmin=0, vmax=num_barras - 1)
colores = [cmap(norm(i)) for i in range(num_barras)]

plot = df_resultados['promedio_edades'].plot(kind='bar', color=colores)

plt.title('Promedio de Edad por Voto')
plt.xlabel('Voto')
plt.ylabel('Edad en años')

# Agregamos las etiquetas a las barras del gráfico
for i, v in enumerate(df_resultados['promedio_edades']):
    plt.text(i, v, str(v), ha='center', va='bottom')

plt.xticks(rotation=45)
plt.tight_layout()
plt.savefig('graficos/Grafico_barras_promedio_edad_por_voto.png')

# Guardarmos los datos en un archivo de texto (.txt)
df_resultados['promedio_edades'] = df_resultados['promedio_edades'].astype(str) + ' años en promedio'
df_resultados.to_csv('datos/Resultados_edad_por_voto.txt', sep='\t', index_label='Voto')
