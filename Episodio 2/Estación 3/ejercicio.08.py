def suma(numero1, numero2):
    resultado = numero1 + numero2
    return resultado

def triangulo_equilatero(base, altura):
    lado = base
    perimetro = base + base + base
    area = (base * altura) / 2

    print(f"Lado del triángulo: {lado}")
    print(f"Altura del triángulo: {altura}")
    print(f"Perímetro del triángulo: {perimetro}")
    print(f"Área del triángulo: {area}")

def es_multiplo(num1, num2):
    return num1 % num2 == 0

def main():
    # Llamada a la función suma()
    resultado = suma(5, 7)
    print(f"El resultado de la suma es : {resultado}")

    # Llamada a la función triangulo_equilatero()
    triangulo_equilatero(8, 4)

    # Llamada a la función es_multiplo()
    num1 = int(input("Ingresa el primer número entero: "))
    num2 = int(input("Ingresa el segundo número entero: "))

    if es_multiplo(num1, num2) or es_multiplo(num2, num1):
        print(f" {num1} es múltiplo de {num2}")
    else:
        print("f {num1} NO es múltiplo de {num2}")

if __name__ == "__main__":
    main()

'''COMENTARIO:
En este código, hemos incluido las funciones suma(),
triangulo_equilatero() y es_multiplo(), y hemos realizado 
llamadas a cada una de ellas dentro de la función main().

Llamamos a la función suma() para sumar los números 5 y 7 y mostrar el resultado.
Llamamos a la función triangulo_equilatero() para calcular y mostrar los aspectos de un triángulo equilátero con base 5 y altura 4.
Llamamos a la función es_multiplo() para verificar si dos números ingresados por el usuario son múltiplos entre sí.
De esta manera, todas las funciones se utilizan en un mismo programa, y su ejecución se produce dentro de la función principal main() 
que es llamada cuando el script se ejecuta como programa principal.'''