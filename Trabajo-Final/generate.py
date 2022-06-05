import math
from faker import Faker
import random
fake = Faker("es_CL")

def get_rol(id):
    if id == 2:
        return "Dueño"
    if id > 2 and id < 6:
        return "Jefe"
    else:
        return "Empleado"

id = 2
for _ in range(25):
    nombre = fake.name()
    jefe = random.randint(1, id-1)
    sueldo = math.trunc(random.random() * random.randint(10000, 100000))
    rol = get_rol(id)
    #Las primeras 25 direcciones que se cargan son para empleados
    direccion = random.randint(1, 25)
    # id, nombre, sueldo, rol, id_jefe, id_direccion
    print(f"{id}, {nombre}, {sueldo}, {rol},{jefe}, {direccion}")
    id+=1