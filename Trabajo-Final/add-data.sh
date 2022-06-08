#Para copiar el csv en postgres hay que usar
#Cambiando la direccion del archivo, pero siempre siendo absoluta
#Si hace falta, se especifica el orden de los atributos en el csv
PGPASSWORD=postgres psql -U postgres -h 127.0.0.1 -c "\copy direcciones FROM '/usr/facultad/direcciones.csv' delimiter ',' csv"

