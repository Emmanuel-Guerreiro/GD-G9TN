import random

from write import create_and_write
from faker import Faker


fake = Faker()

insumos_disp = [
    "Protección de Cultivos.",
    "Fertilizantes.",
    "Semillas de Soja.",
    "Semillas de Maiz.",
    "Silo Bolsas.",
    "Semillas de Trigo",
    "Inoculantes.",
    "Roundup",
]


def generate_insumo():
    ins = []

    for i in range(len(insumos_disp)):
        stock = random.randint(0, 100)
        nombre = insumos_disp[i]
        precio = random.randint(10, 1000)
        ins.append((f"{i},{nombre}", i, stock, precio))

    return ins


def generate_provee(id_insumo, stock, precio):
    s = stock
    i = random.randint(0, 10000)
    provisiones = []
    while s > 0:
        proveedor = random.randint(0, 6)
        cantidad = random.randint(0, s)
        fecha = fake.date()
        provisiones.append(f"{i},{proveedor},{id_insumo},{cantidad},{fecha},{precio}")
        # Esto disminuye el while
        s = -cantidad
        i += 1

    return provisiones


def generate_consume(id_insumo, stock):
    consumo_tot = 0
    n_usos = random.randint(1, 3)
    id_uso = random.randint(0, 10000)

    consumos = []

    for _ in range(n_usos):
        id_orden_trabajo = random.randint(0, 49)
        c = random.randint(1, stock - consumo_tot)

        consumos.append(f"{id_uso},{id_orden_trabajo},{id_insumo},{c}")

        consumo_tot += c

    return consumos


def generate_all():

    for (insumo, id, stock, precio) in generate_insumo():
        create_and_write("insumos", insumo)
        for ii in generate_provee(id, stock, precio):
            create_and_write("provee", ii)

        for kk in generate_consume(id, stock):
            create_and_write("consume", kk)

    return


if __name__ == "__main__":
    generate_all()
