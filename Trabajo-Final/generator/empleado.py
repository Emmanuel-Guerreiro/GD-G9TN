import math
from faker import Faker
import random
from write import create_and_write


fake = Faker("es_CL")

archivo_empleados = "empleados"


def _get_rol(id):
    if id == 1:
        return "Dueño"
    if id > 1 and id < 6:
        return "Jefe"
    else:
        return "Empleado"


def crear_empleados():
    for id in range(1, 25):
        nombre = fake.name()
        sueldo = math.trunc(random.random() * random.randint(10000, 100000))
        rol = _get_rol(id)

        jefe = random.randint(1, 5)
        if rol == "Dueño":
            jefe = "NULL"
        elif rol == "Jefe":
            jefe = "2"

        # Las primeras 25 direcciones que se cargan son para empleados
        direccion = random.randint(1, 25)
        # id, nombre, sueldo, rol, id_jefe, id_direccion
        create_and_write(
            archivo_empleados, f"{id}, {nombre}, {sueldo}, {rol},{jefe}, {direccion}"
        )


if __name__ == "__main__":
    crear_empleados()
