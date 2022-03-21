#!/bin/bash

echo "sudo docker exec -it docker-image_db_1 psql -U postgres"

echo "------Conectando a postgres 127.1.1.1:5432"
sudo docker exec -it UTN_Postgres /bin/bash
# sudo docker exec -it UTN_Postgres psql -U postgres

