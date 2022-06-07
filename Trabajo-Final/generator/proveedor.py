import random
from faker import Faker

from write import create_and_write


fake = Faker("es_ES")


cuits = [
    "20-48028763-1",
    "33-25497340-3",
    "33-35036407-8",
    "20-12145175-2",
    "33-37145386-0",
    "24-88886653-8",
    "30-55745489-2",
]


emial_providers = ["gmail", "yahoo", "hotmail"]


def crear_proveedor():
    for i in range(7):
        nombre = fake.first_name()
        email = f"{nombre}@{cuits[i]}.com"
        telefono = random.randint(1000000000, 9000000000)
        cuit = cuits[i]
        # Las primeras 25 direcciones que se cargan son para empleados
        direccion = random.randint(25, 49)
        create_and_write(
            "proveedores", f"{i}, {cuit}, {nombre}, {telefono}, {email}, {direccion}"
        )


if __name__ == "__main__":
    crear_proveedor()
