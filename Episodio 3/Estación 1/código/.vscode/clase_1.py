print("Hola mundo")
print(3+6)
nombre = 'Fernando'
apellido = 'Del Pozzi'
estado = 'estudiante'
edad = 42
hobbies = ['pescar', 'caminar', 'video-games' ]

# Esto es un comentario
'''Esto tambien es un compentario
pero con comillas triple'''

print("Hola mi nombre es {}, mi apellido es {} y soy {}".format(nombre, apellido, estado))

print(type(estado))
print(type(edad))
print(type(hobbies))


#Ciclo for
#!/usr/bin/python

#1º forma
print("1 forma")
for i in range(1,101):
	if( (i%2)==0 ):	
		print(i)

print("")

#2º forma
print("2 forma")
for i in range(1,101):	
	print(i)
	
    #!/usr/bin/python

for i in "Hola mundo":
	print(i)