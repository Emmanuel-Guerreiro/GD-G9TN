import math
import random
from faker import Faker
from write import create_and_write


fake = Faker("es_ES")
fake_nombre_campos = Faker("it_IT")

FILE_ADDRESS = "campos"


def generate_campos():
    for i in range(10):
        nombre = fake_nombre_campos.name()
        hectareas = random.randint(50, 1000)
        cultivo = i % 6
        cultivo_anterior = i % 6
        direccion = random.randint(0,49)
        create_and_write(FILE_ADDRESS,f"{i}, {nombre}, {hectareas}, {direccion}, {cultivo}, {cultivo_anterior}")


if __name__ == "__main__":
    generate_campos()