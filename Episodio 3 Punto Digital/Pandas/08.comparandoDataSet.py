# Comparando datasets: Bioetanol con caña de azúcar: Producción y ventas

import pandas as pd
import datetime
import matplotlib.pyplot as plt
import matplotlib.dates as mdates

urlProducc="https://datos.magyp.gob.ar/dataset/18e03919-2828-4e21-b7ab-4fe340b411ea/resource/edeffcb4-1ed7-4eb0-ab7e-3e85b8854afb/download/serie_de_tiempo_produccion_por_insumo_bioetanol.csv"
urlVentas="https://datos.magyp.gob.ar/dataset/b3819c0c-ce32-4c2b-884e-984d3e10bdc0/resource/a49ccbda-c6f4-4fe9-8ebf-8c1c664f28dc/download/ventas-internas-de-bioetanol-por-tipo-de-insumo-.csv"

produccionBioetanol = pd.read_csv(urlProducc,header=0, names=['Fecha','CaniaAzucar','Maiz'])
ventasBioetanol = pd.read_csv(urlVentas,header=0,names=['id_pais','nom_pais','anio','mes','cod_unimed','nom_unimed','CaniaAzucar','Maiz','total'])

# ORDENAMOS DATOS DE LA PRODUCCION DE BIOETANOL
produccionBioetanol['Anios'] = pd.DatetimeIndex(produccionBioetanol['Fecha']).year
produccionBioetanol['Mes'] = pd.DatetimeIndex(produccionBioetanol['Fecha']).month
print(produccionBioetanol)
print("\n")
print(ventasBioetanol)


# ORDENAMOS DATOS DE LA VENTA DE BIOETANOL
#Hay columnas que no son de interés, puedo dejarlas o eliminarlas.
#NO es necesario eliminarlas pero te enseñamos cómo
#axis=0 es para filas - axis = 1 es para columnas
#.drop(‘NombreColumna’,axis=1)
#drop(‘NumeroFila’,axis=0)
ventasBioetanol = ventasBioetanol.drop('id_pais',axis=1) #elimino columna id_pais
ventasBioetanol = ventasBioetanol.drop('nom_pais',axis=1) #elimino columna nombre_pais
ventasBioetanol = ventasBioetanol.drop('cod_unimed',axis=1) #elimino columna cod_unimed
ventasBioetanol = ventasBioetanol.drop('nom_unimed',axis=1) #elimino columna nom_unimed

#Preparamos el grafico
plt.title('Producción VS Ventas de Bioetanol creado con Caña de Azucar')
plt.plot(produccionBioetanol["CaniaAzucar"], 'b--', label='Producción')
plt.plot(ventasBioetanol["CaniaAzucar"], 'r-.', label='Venta')
plt.ylabel('Bioetanol [m3]')
plt.xlabel('Mes')
plt.xticks(fontsize=8,rotation=45)
plt.legend() #muestra leyendas
plt.axis([0, 30, 10000, 65000])
plt.grid()
plt.show()
