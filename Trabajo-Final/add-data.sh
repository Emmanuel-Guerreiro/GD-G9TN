#Itera sobre todos los archivos de base-data y los carga automaticamente
for dir in ./base-data/*
do
    #La contraseña como env asi plano no está bueno, pero cumple
    PGPASSWORD=postgres psql -U postgres -h 127.0.0.1 -d postgres -f ${dir}   
done