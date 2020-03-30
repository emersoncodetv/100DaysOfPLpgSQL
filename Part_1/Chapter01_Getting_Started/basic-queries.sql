-- Esto es un comentario, sirve para la documentaci�n del c�digo 

-- Para usar postgresql a trav�s de docker 
-- Con el bash de git e instalado docker windows

-- Insancia una nueva DB
$ docker run --rm --name pg-docker -e POSTGRES_PASSWORD=docker -d -p 5432:5432 postgres:12.2

$ winpty docker exec -it -u postgres pg-docker bash

$ createdb mydb

-- Accediendo a la base de datos a trav�s de PostgreSQL interactive terminal psql 

$ winpty docker exec -it -u postgres pg-docker bash

$ psql mydb

$ psql -U postgres mydb


SELECT 4 * 3;