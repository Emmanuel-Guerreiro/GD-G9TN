#!/bin/bash

files=( direcciones cultivos campos ordenes_trabajo\
 empleados trabajos_realizados proveedores\
 insumos consume provee)


for file in "${files[@]}"
do  
echo "----Cargando: $file ----"
file_dir="$PWD/datos/$file.csv"
PGPASSWORD=postgres psql -U postgres -h 127.0.0.1 -c "\copy $file FROM $file_dir delimiter ',' NULL ''"
done
