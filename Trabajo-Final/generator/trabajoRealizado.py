import random

from write import create_and_write


def generate_tr():
    for i in range(100):
        empleado = random.randint(0, 24)
        create_and_write("trabajoRealizado", f"{i}, {empleado},{i%50} ")


if __name__ == "__main__":
    generate_tr()
