# El poner la contraseña dentro de un archivo de texto NO está bien.
# PostgreSQL provee soluciones como los archivos de contraseña
# pero para los fines de este trabajo, sigue siendo util el poner
# la variable de entorno aca

echo "--------- Drop tables ----------"
PGPASSWORD=postgres psql -U postgres -h 127.0.0.1 -d postgres -f drop-tables.sql

echo "--------- Create tables --------"
PGPASSWORD=postgres psql -U postgres -h 127.0.0.1 -d postgres -f create-tables.sql