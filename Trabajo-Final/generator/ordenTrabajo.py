import random

from faker import Faker
from write import create_and_write

fake = Faker()

tareas =["Fumigar", "Cosechar", "Cultivar", "Arar", "Reparar", "Alambrar"]

def generate_ot():
    for i in range(50):
        campo = random.randint(0,9)
        tarea = tareas[random.randint(0, 100) % len(tareas)]
        fecha = fake.date()
        create_and_write("ordenesTrabajo",f"{i}, {campo}, {tarea}, {fecha}")

if __name__ == "__main__":
    generate_ot()
