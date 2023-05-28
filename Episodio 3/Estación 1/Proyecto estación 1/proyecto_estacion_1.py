import pandas as pd # Importamos la librería pandas, que proporciona estructuras de datos y herramientas de análisis de datos eficientes en Python.
import matplotlib.pyplot as plt  # Importamos el módulo pyplot de la librería matplotlib, que proporciona una interfaz de alto nivel para crear gráficos y visualizaciones.
import sys #  Importamos el módulo sys, que proporciona acceso a variables y funciones específicas del sistema. Se utiliza para interactuar con el intérprete de Python y controlar aspectos del entorno de ejecución.
import os #  Importamos el módulo os, que proporciona funciones para interactuar con el sistema operativo. Se utiliza para realizar operaciones relacionadas con archivos, directorios y variables de entorno, entre otras funcionalidades.
import re # Importamos el módulo re (expresiones regulares), que proporciona funciones para trabajar con patrones y realizar operaciones de coincidencia y búsqueda de texto utilizando expresiones regulares. Se utiliza para realizar manipulación y procesamiento avanzado de cadenas de texto.
import string # Importamos el módulo string, que proporciona un conjunto de constantes y funciones relacionadas con operaciones de cadenas de texto. Incluye caracteres ASCII, dígitos, letras y funciones para manipular y formatear cadenas de texto. Se utiliza comúnmente en operaciones de manipulación y análisis de texto.

# Configuramos la codificación de salida
sys.stdout.reconfigure(encoding='utf-8')

# Leemos el archivo CSV
df = pd.read_csv("Formulario Proyecto estación 1 (semilla).csv", encoding='utf-8')

# Eliminanamos la palabra "años" y los espacios en blanco de la columna " 1. Ingresa tu edad:"
df[" 1. Ingresa tu edad:"] = df[" 1. Ingresa tu edad:"].str.replace("años", "")
df[" 1. Ingresa tu edad:"] = df[" 1. Ingresa tu edad:"].str.replace(" ", "")

directorio_salida = os.getcwd()  # Obtenemos el directorio actual del proyecto

# Creamos las carpetas "graficos" y "datos" si no existen, si existen no se crean.
carpeta_graficos = os.path.join(directorio_salida, "graficos")
carpeta_datos = os.path.join(directorio_salida, "datos")
os.makedirs(carpeta_graficos, exist_ok=True)
os.makedirs(carpeta_datos, exist_ok=True)

columnas = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]

for columna in columnas:
    if columna in [1, 2, 3, 5, 12, 13, 14, 15]:
        # Obtenemos el nombre de la columna
        nombre_columna = df.columns[columna]

        # Reemplazamos los caracteres inválidos por guiones bajos en el nombre del archivo
        caracteres_invalidos = string.punctuation + "¿¡"
        nombre_archivo = "".join(c if c not in caracteres_invalidos else "_" for c in nombre_columna)

        # Calculamos los porcentajes utilizando el nombre original de la columna
        porcentajes = df[nombre_columna].value_counts(normalize=True) * 100

        # Imprimimos los porcentajes
        print(f"Porcentajes para la pregunta: {nombre_columna}")
        print("==================================")
        print(porcentajes)
        print()

        # Guardamos los porcentajes en un archivo de texto
        with open(os.path.join(carpeta_datos, f"Porcentajes_{nombre_archivo}.txt"), 'w', encoding='utf-8') as file:
            file.write(f"Porcentajes para la pregunta: {nombre_columna}\n")
            file.write("==================================\n")
            file.write(porcentajes.to_string())

        # Generaramos el gráfico de barras
        plt.figure(figsize=(10, 6))
        ax = porcentajes.plot(kind='bar', color=plt.cm.Set3(range(len(porcentajes))))
        ax.set_title(nombre_columna)
        ax.set_xlabel("Respuesta")
        ax.set_ylabel("Porcentaje")
        plt.xticks(rotation=45, ha='right')
        plt.tight_layout()

        # Guardamos el gráfico de barras en un archivo de imagen
        plt.savefig(os.path.join(carpeta_graficos, f"{nombre_archivo}_grafico_barras.png"))
        plt.show()

        # Generamos el gráfico de torta
        plt.figure(figsize=(8, 8))
        plt.pie(porcentajes, labels=porcentajes.index, autopct='%1.1f%%', colors=plt.cm.Set3(range(len(porcentajes))))
        plt.title(nombre_columna)
        plt.tight_layout()

        # Guardamos el gráfico de torta en un archivo de imagen
        plt.savefig(os.path.join(carpeta_graficos, f"{nombre_archivo}_grafico_torta.png"))
        plt.show()

    elif columna in [6, 7, 8, 16]:
        # Obtenemos el nombre de la columna
        nombre_columna = df.columns[columna]

        # Reemplazamos los caracteres inválidos por guiones bajos en el nombre del archivo
        caracteres_invalidos = string.punctuation + "¿¡"
        nombre_archivo = "".join(c if c not in caracteres_invalidos else "_" for c in nombre_columna)

        # Separaramos las opciones en cada fila y contar la frecuencia de cada palabra
        opciones_separadas = df.iloc[:, columna].str.split(";")
        frecuencia_palabras = opciones_separadas.explode().value_counts()

        # Generaramos el gráfico de barras
        frecuencia_palabras.plot(kind="bar")
        plt.xlabel("Palabras")
        plt.ylabel("Frecuencia")
        plt.title(nombre_columna)
        plt.savefig(os.path.join(carpeta_graficos, f"{nombre_archivo}_bar.png"))
        plt.show() # Lo mostramos en pantalla

        # Generamos el gráfico de torta
        frecuencia_palabras.plot(kind="pie", autopct="%1.1f%%")
        plt.axis("equal")
        plt.title(nombre_columna)
        plt.savefig(os.path.join(carpeta_graficos, f"{nombre_archivo}_pie.png"))
        plt.show()

        # Cambiamos los espacios en blanco por guiones
        pregunta = nombre_columna.strip().replace('\u200b', ' ')

        # Calculamos los porcentajes
        porcentajes = frecuencia_palabras / frecuencia_palabras.sum() * 100

        # Imprimimos los porcentajes
        print(f"Porcentajes para la pregunta: {pregunta}")
        print("==================================")
        print(porcentajes)
        print()

        # Guardamos los porcentajes en un archivo de texto
        with open(os.path.join(carpeta_datos, f"Porcentajes_{nombre_archivo}.txt"), 'w', encoding='utf-8') as file:
            file.write(f"Porcentajes para la pregunta: {pregunta}\n")
            file.write("==================================\n")
            file.write(porcentajes.to_string())

    else:
        frases = []

        # Obtenemos las frases de las columnas 9, 10 y 11
        frase_9 = df.iloc[:, 9].values.tolist()
        frase_10 = df.iloc[:, 10].values.tolist()
        frase_11 = df.iloc[:, 11].values.tolist()

        # Agregamos las frases a la lista
        frases.extend(frase_9)
        frases.extend(frase_10)
        frases.extend(frase_11)

        # Imprimimos las frases
        print(frases)
        print('---')

        # Guardamos las frases en un archivo de texto
        with open(os.path.join(carpeta_datos, "Respuestas_frases_9_10_11.txt"), 'w', encoding='utf-8') as archivo_txt:
            for columna in columnas:
                if columna in [9, 10, 11]:
                    nombre_columna = df.columns[columna]
                    archivo_txt.write("Pregunta: {}\n".format(nombre_columna))
                    archivo_txt.write("==============================\n")
            
                    # Obtenemos las frases de la columna actual
                    frases_columna = df.iloc[:, columna].values.tolist()

                    # Escribimos las frases en el archivo de texto
                    for frase in frases_columna:
                        archivo_txt.write(f"{frase}\n")
            
                    archivo_txt.write("\n")

