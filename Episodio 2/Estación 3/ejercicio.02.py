'''Función para crear una función llamada suma() que sume dos
números. Como resultado imprime “La suma de {numero1} y {numero2} es
{resultado}”  
'''

#Función: Defino una función con el nombre "suma". Entre paréntesis le digo que cuando la llame o utilice le voy a pasar dos argumentos

def main():
    # Ejemplos de uso:
    resultado_suma = suma(5, 7) # Llamo a la función y le paso lo dos parámetros. En este caso dos números
    resultado_suma = suma(123, 98)# Vuelvo a llamar a la función y le paso dos números distintos
    resultado_suma = suma(87, 4)
    resultado_suma = suma(77, 21)

def suma(numero1, numero2): 
    resultado = numero1 + numero2 #Acá le doy las intrucciones. Le digo que sume los dos variables o parámetros
    print(f"La suma de {numero1} y {numero2} es: {resultado}") #Imprimo en la consola
    return resultado # Retorno el resultado de la función

if __name__ == "__main__":
    main()

