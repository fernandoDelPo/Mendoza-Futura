# Actividad opcional
import pandas as pd
import matplotlib.pyplot as plt

url = "https://datos.magyp.gob.ar/dataset/c19a5875-fb39-48b6-b0b2-234382722afb/resource/52e72aec-4ab6-4d60-8c95-47de21e46eec/download/existencias-bovinas-2008-2019.csv"
datos = pd.read_csv(url)

# Renombramos la columna 'indice_tiempo' a 'Anio'
datos = datos.rename(columns={'indice_tiempo': 'Anio'})
print(datos.columns)
fig, ax = plt.subplots(figsize=(10, 6))
ax.plot(datos['Anio'], datos['vacas'], label='vacas')
ax.plot(datos['Anio'], datos['vaquillonas'], label='vaquillonas')
ax.plot(datos['Anio'], datos['novillos'], label='novillos')
ax.plot(datos['Anio'], datos['novillitos'], label='novillitos')
ax.plot(datos['Anio'], datos['terneros'], label='terneros')
ax.plot(datos['Anio'], datos['terneras'], label='terneras')
ax.plot(datos['Anio'], datos['toros'], label='toros')
ax.plot(datos['Anio'], datos['toritos'], label='toritos')
ax.plot(datos['Anio'], datos['bueyes'], label='bueyes')

ax.set_xlabel('Año')
ax.set_ylabel('Cantidad por millón de cabezas')
ax.legend()

plt.show()
