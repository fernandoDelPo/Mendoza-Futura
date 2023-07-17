# En el caso del ejemplo que nos da la guía solo se imprimiran lineas horizontales
def hacer_rectangulo(anchura, altura):
    for i in range(altura):
        print("* ", end="")
    print()

def main():
    anchura = int(input("Anchura del rectángulo: "))
    altura = int(input("Altura del rectángulo: "))
    hacer_rectangulo(anchura, altura)

if __name__ == "__main__":
    main()



# Para imprimir un rectangulo en 2D debemos agregar otro ciclo for dentro del ciclo for anterior pasandole en esta ocacion la variable "anchura"

def hacer_rectangulo(anchura, altura):
    for i in range(altura):
        print("* ", end="")
        for i in range(anchura):
            print("* ", end="")
        print()    
    print()

def main():
    anchura = int(input("Anchura del rectángulo: "))
    anchura -= 1 # Le resto uno porque el indice comienza en 0.
    altura = int(input("Altura del rectángulo: "))
    hacer_rectangulo(anchura, altura)

if __name__ == "__main__":
    main()