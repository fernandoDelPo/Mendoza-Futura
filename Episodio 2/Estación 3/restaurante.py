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