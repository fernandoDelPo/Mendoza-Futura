def triangulo_equilatero(base, altura):
    lado = base
    perimetro = base + base + base
    area = (base * altura) / 2

    print(f"Lado del triángulo: {lado}")
    print(f"Altura del triángulo: {altura}")
    print(f"Perímetro del triángulo: {perimetro}")
    print(f"Área del triángulo: {area}")

def main():
    base = float(input("Ingresa la base del triángulo equilátero: "))
    altura = float(input("Ingresa la altura del triángulo equilátero: "))
    triangulo_equilatero(base, altura)

if __name__ == "__main__":
    main()