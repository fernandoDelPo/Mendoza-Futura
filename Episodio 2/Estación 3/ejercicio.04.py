def estacion(dia, mes):
    
    if (mes == 3 and dia >= 20) or (mes == 4) or (mes == 5) or (mes == 6 and dia < 21):
        return "Es otoño"
    elif (mes == 6 and dia >= 21) or (mes == 7) or (mes == 8) or (mes == 9 and dia < 21):
        return "Es invierno"
    elif (mes == 9 and dia >= 21) or (mes == 10) or (mes == 11) or (mes == 12 and dia < 21):
        return "Es primavera"
    else:
        return "Es verano"

def main():
    """
    Función principal que solicita al usuario el día y mes, y muestra la estación correspondiente.
    """
    dia = int(input("Ingresa el día (1-31): "))
    mes = int(input("Ingresa el mes (1-12): "))

    estacion_actual = estacion(dia, mes)
    print(estacion_actual)

if __name__ == "__main__":
    main()

"""
COMENTARIOS:
    Determina la estación correspondiente a un día y mes.

    Argumentos:
    - dia: El día del mes (entero).
    - mes: El número del mes (entero).

    Retorna:
    - La estación correspondiente al día y mes ingresado (cadena de texto).
    """