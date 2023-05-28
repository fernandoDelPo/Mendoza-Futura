
# En este archivo de python podremos practicar las actividades del README.md 


# actividad 32

mes = int(input("Ingresa el número del mes actual (1-12): "))
dia = int(input("Ingresa el número del día actual: "))
if mes == 1 or mes == 2 or (mes == 12 and dia >= 21):
    estacion = "Verano"
elif mes == 3 or mes == 4 or mes == 5:
    estacion = "Otoño"
elif mes == 6 or mes == 7 or mes == 8:
    estacion = "Invierno"
elif mes == 9 or mes == 10 or mes == 11:
    estacion = "Primavera"
else:
    estacion = "Fecha inválida"

print("Es", estacion)
