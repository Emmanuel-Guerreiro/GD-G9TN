def create_and_write(nombre, toWrite):
    file_name = f"./datos/{nombre}.csv"
    f = open(file_name, "a")
    toWrite = toWrite + "\n"
    f.write(toWrite)
    f.close()
    
    
    