## Ejercicio 02
Función para crear una función llamada suma() que sume dos
números. Como resultado imprime “La suma de {numero1} y {numero2} es
{resultado}”  


Función: Defino una función con el nombre "suma". Entre paréntesis le digo que cuando la llame o utilice le voy a pasar dos argumentos

```py
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
```


## Ejercicio 03

```py
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
```

## Ejercicio 04

```py
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
```

## Ejercicio 05

```py
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
```

# Ejercicio 07

```py
def es_multiplo(num1, num2):
    """
    COMENTARIO:
    Verifica si num1 es múltiplo de num2.

    Argumentos:
    - num1: Primer número entero.
    - num2: Segundo número entero.

    Retorna:
    - True si num1 es múltiplo de num2, False en caso contrario.
    """
    return num1 % num2 == 0  # 

def main():
    """
    Función principal que solicita dos números enteros al usuario y verifica si uno es múltiplo del otro.
    """
    try:
        num1 = int(input("Ingresa el primer número entero: "))
        num2 = int(input("Ingresa el segundo número entero: "))

        if es_multiplo(num1, num2) or es_multiplo(num2, num1):
            print(f" {num1} es múltiplo de {num2}")
        else:
            print(f" {num1} NO es múltiplo de {num2}")
    except ValueError:
        print("Error: Ingresa solo números enteros válidos.")

if __name__ == "__main__":
    main()


'''COMENTARIO:
En este código, hemos definido la función es_multiplo(num1, num2) que verifica si num1 es múltiplo de num2 utilizando el operador %,
que devuelve el residuo de la división entre num1 y num2. Si el residuo es igual a cero, entonces num1 es múltiplo de num2,
y la función devuelve True. En caso contrario, devuelve False.
En la función main(), solicitamos al usuario que ingrese los dos números enteros. Luego, llamamos a la función es_multiplo(num1, num2) 
y también verificamos si num2 es múltiplo de num1 utilizando es_multiplo(num2, num1). Si alguna de las dos verificaciones es verdadera, 
imprimimos que uno de los números es múltiplo del otro. En caso contrario, indicamos que ninguno de los números es múltiplo del otro.
Hemos agregado una protección para manejar posibles errores en la entrada del usuario utilizando un bloque try-except 
que captura excepciones ValueError cuando se ingresan valores que no son enteros válidos.'''
```

## Ejercicio 08

```py
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
```

## Ejercicio 09

```py
import random

def generar_lista_aleatoria(cantidad):
    lista_aleatoria = [random.randint(0, 1000) for _ in range(cantidad)]
    return lista_aleatoria

def main():
    cantidad_numeros = 100
    lista_aleatoria = generar_lista_aleatoria(cantidad_numeros)

    print("Lista de números enteros aleatorios:")
    print(lista_aleatoria)

if __name__ == "__main__":
    main()


'''COMENTARIOS: En este código, hemos definido la función generar_lista_aleatoria(cantidad) 
que toma un parámetro cantidad y genera una lista con esa cantidad de números enteros aleatorios 
en el rango de 0 a 1000 utilizando la función random.randint(0, 1000).
En la función main(), especificamos que queremos generar una lista con 100 números enteros 
aleatorios (puedes cambiar este número cambiando el valor de cantidad_numeros). Luego, llamamos a la 
función generar_lista_aleatoria(cantidad_numeros) para obtener la
lista con los números aleatorios y la mostramos en pantalla.'''
```

## Ejercicio 10

```py
import random

def palabra_aleatoria(lista_palabras):
    return random.choice(lista_palabras)

def main():
    vehiculos = ['avión', 'bicicleta', 'coche', 'motocicleta', 'tractor', 'barco', 'transatlántico', 'camión']
    palabra_elegida = palabra_aleatoria(vehiculos)

    print("Palabra aleatoria elegida:", palabra_elegida)

if __name__ == "__main__":
    main()


'''COMENTARIOS: 
En este código, hemos definido la función palabra_aleatoria(lista_palabras) 
que toma una lista de palabras lista_palabras y utiliza random.choice(lista_palabras) 
para elegir una palabra al azar de la lista.
En la función main(), hemos creado la lista vehiculos con las palabras proporcionadas. 
Luego, llamamos a la función palabra_aleatoria(vehiculos) para obtener la palabra aleatoria 
y la mostramos en pantalla.
Cada vez que ejecutes el programa, obtendrás una palabra aleatoria diferente de la lista vehiculos.'''
```

## Ejercicio Restaurante descuentos

```py
import tkinter as tk
from PIL import Image, ImageTk

# Definición de funciones para calcular el descuento y el importe a pagar
def calcular_descuento(consumo, tarjeta):
    descuento = 0

    if tarjeta == "NARANJA":
        if consumo > 2000:
            descuento = 0.1
    elif tarjeta == "Nativa":
        descuento = 0.2
    else:
        descuento = 0.3

    return descuento

def calcular_importe(consumo, descuento):
    return consumo - (consumo * descuento)

def calcular():
    try:
        # Obtener el consumo y la tarjeta seleccionada por el usuario
        consumo = float(entry_consumo.get())
        tarjeta = combo_tarjeta.get()

        # Calcular el descuento y el importe a pagar
        descuento = calcular_descuento(consumo, tarjeta)
        importe_a_pagar = calcular_importe(consumo, descuento)

        # Mostrar los resultados en las etiquetas correspondientes
        label_descuento.config(text=f"Descuento: {descuento*100:.2f}%")
        label_importe.config(text=f"Importe a pagar: ${importe_a_pagar:.2f}")
    except ValueError:
        label_descuento.config(text="Error: Ingresa un consumo válido.")
        label_importe.config(text="")

# Crear ventana
root = tk.Tk()
root.title("Calculadora de Descuentos")

# Cargar imagen del logo
image = Image.open("logo.png")
image = image.resize((200, 200), Image.ANTIALIAS)
photo = ImageTk.PhotoImage(image)
label_image = tk.Label(root, image=photo)
label_image.pack()

# Widgets de entrada
frame = tk.Frame(root)
frame.pack(pady=10)

label_consumo = tk.Label(frame, text="Consumo:")
label_consumo.pack(side=tk.LEFT)

entry_consumo = tk.Entry(frame)
entry_consumo.pack(side=tk.LEFT)

combo_tarjeta = tk.StringVar()
combo_tarjeta.set("NARANJA")
tarjetas = ["NARANJA", "Nativa", "Efectivo"]
dropdown_tarjeta = tk.OptionMenu(root, combo_tarjeta, *tarjetas)
dropdown_tarjeta.pack(pady=10)

# Botón para calcular, llama a la función calcular() al hacer clic
button_calcular = tk.Button(root, text="Calcular", command=calcular)
button_calcular.pack()

# Labels para mostrar el resultado
label_descuento = tk.Label(root, text="")
label_descuento.pack()

label_importe = tk.Label(root, text="")
label_importe.pack()

# Inicia el bucle de eventos de la interfaz gráfica
root.mainloop()


'''COMENTARIO: 
Para realizar este programa utilizando tkinter y PIL (Python Imaging Library), 
primero necesitamos instalar PILLOW, que es una bifurcación de PIL que es más activa 
y se utiliza en la mayoría de los casos.
Luego creamos una interfaz gráfica simple utilizando tkinter (Como lo vimos en la guía). 
El usuario puede ingresar el monto del consumo y seleccionar la tarjeta de crédito utilizada. 
Al hacer clic en el botón "Calcular", el programa calculará el descuento y el importe a pagar según las reglas dadas.
Tener en cuenta que debemos tener una imagen llamada "logo.png" en el mismo directorio donde se encuentra el script, 
o modifica la ruta en la línea image = Image.open("restaurante.png") para cargar la imagen desde otra ubicación.

----------------------------------------------------------

# Widgets de entrada
frame = tk.Frame(root)
frame.pack(pady=10)

Esta línea de código se usa para asegurar que haya un espacio adecuado entre el Frame y los otros elementos que lo rodean. 
Puedes ajustar el valor de pady según tus preferencias para obtener el espaciado deseado. Si se omite pady, el Frame se 
ajustará automáticamente al contenido que contiene, sin agregar ningún espacio adicional.'''
```