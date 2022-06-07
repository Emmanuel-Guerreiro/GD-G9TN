from faker import Faker
from write import create_and_write

fake = Faker("es_ES")

FILE_ADDRESS = "direcciones"

ciudades = ["Valle del Puerto",
"As Gimeno de las Torres",
"Cortes del Puerto",
"La Prado",
"Miguel del Puerto",
"Montalvo del Penedès",
"O Riojas del Puerto",
"Os Fajardo",
"Luque de Arriba",
"As Reséndez Medio",
]

des = ["Porton Rojo", "Tres perros en la puerta", 
"4ta despues de la esquina", "Quebracho en la entrada",
"NULL", "NULL", "NULL"]

def parser(fecha: str):
    direccion, prov_other = fecha.split("\n")
    prov, _ = prov_other.split(", ")
    return direccion, prov

def generate_direccion():
    for i in range(50):
        direccion, prov = parser(fake.address())
        ciudad = ciudades[i % len(ciudades)]
        desc = des[i % len(des)]
        create_and_write(FILE_ADDRESS, f"{i}, {prov}, {ciudad}, {direccion}, {desc}")
        # print(f"{i}, {prov}, {ciudad}, {direccion}, {desc}")

if __name__ == "__main__":
        generate_direccion()