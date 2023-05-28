import pandas as pd
import matplotlib.pyplot as plt
url = "https://datos.magyp.gob.ar/dataset/18e03919-2828-4e21-b7ab-4fe340b411ea/resource/edeffcb4-1ed7-4eb0-ab7e-3e85b8854afb/download/serie_de_tiempo_produccion_por_insumo_bioetanol.csv"
datos = pd.read_csv(url,header=0, names=['Fecha','CaniaAzucar','Maiz'])
 
# Seperar meses y años con pandas
datos['Anios'] = pd.DatetimeIndex(datos['Fecha']).year
datos['Mes'] = pd.DatetimeIndex(datos['Fecha']).month
print(datos) #ahora tiene dos columnas nuevas al final


print(datos.sum()) #hace sumatoria de todas las columnasc(las fechas no las puede sumar porque siguen siendo str)
print("\n")
print(f"Total de bioetanol producido con caña de azucar:{datos['CaniaAzucar'].sum()} m3")
print(f"Total de bioetanol producido con maíz: {datos['Maiz'].sum()} m3")
plt.plot(datos["CaniaAzucar"], 'b--', label='Caña de Azucar')
plt.plot(datos["Maiz"], 'r-.', label='Maiz')
plt.ylabel('Bioetanol [m3]')
plt.xlabel('Mes')
plt.legend()
plt.axis([0, 30, 10000, 100000])
plt.grid()
plt.show()


# agregamos la fecha en el eje X

plt.plot(datos["Fecha"],datos["CaniaAzucar"], 'b--', label='Caña de Azucar')
plt.plot(datos["Fecha"],datos["Maiz"], 'r-.', label='Maiz')
plt.ylabel('Bioetanol [m3]')
plt.xlabel('Año/Mes')
plt.xticks(fontsize=8,rotation=45)
plt.grid()
plt.show()

