# Para el ejemplo del dataset de la producción de bioetanol:
import pandas as pd
import matplotlib.pyplot as plt
url = "https://datos.magyp.gob.ar/dataset/18e03919-2828-4e21-b7ab-4fe340b411ea/resource/edeffcb4-1ed7-4eb0-ab7e-3e85b8854afb/download/serie_de_tiempo_produccion_por_insumo_bioetanol.csv"
datos = pd.read_csv(url,header=0, names=['Fecha','CaniaAzucar','Maiz'])
print(datos.sum()) #hace sumatoria de todas las columnas (las fechas no las puede sumar porquesiguen siendo str)
print("\n")
print(f"Total de bioetanol producido con caña de azucar: {datos['CaniaAzucar'].sum()} m3")
print(f"Total de bioetanol producido con maíz: {datos['Maiz'].sum()} m3")
plt.plot(datos["CaniaAzucar"])
plt.plot(datos["Maiz"])
plt.show()

plt.plot(datos["CaniaAzucar"])
plt.plot(datos["Maiz"])
#nombre de los ejes
plt.ylabel('Bioetanol [m3]')
plt.xlabel('Mes')
plt.legend()
plt.show()
# Cambiamos color y le colocamos una leyenda de descripción a cada curva:
plt.plot(datos["CaniaAzucar"], 'g--', label='Caña de Azucar')
plt.plot(datos["Maiz"], 'r-.', label='Maiz')
plt.ylabel('Bioetanol [m3]')
plt.xlabel('Mes')
plt.legend()
plt.grid() # Para activar la grilla cuadriculada
plt.show()

