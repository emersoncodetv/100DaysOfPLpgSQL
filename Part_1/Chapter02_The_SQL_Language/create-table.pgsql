CREATE TABLE weather ( 
city VARCHAR(80),
temperature_low INT,
temperature_high INT,
precipitation REAL,
DATE DATE
);

SELECT * FROM weather;

CREATE TABLE cities (
name varchar(80),
location point
);

DROP TABLE weather;
drop table cities ;

INSERT INTO weather
    VALUES ('San Francisco', 46, 50, 0.25, '1994-11-27');
-- En este ejemplo de insercion de datos vemos que no es tan legible. Si un desarrollador nuevo llega a ver este codigo se va a dar cuenta que tiene que ir a revisar la tabla para sabaer en que columna esta cayendo cada valor.
   
SELECT * FROM weather;

insert into cities values ('San Francico', '(-194.0, 53.0)')

SELECT * FROM cities;
   
insert into weather (date, city, temperature_high, temperature_low)
	values ('1994-11-29', 'Hayward', 54, 37);
	
select * from weather;

copy weather(date,city,temperature_high,temperature_low) from  '/Users/emerson/Documents/100DAYS/100DaysOfPLpgSQL/Part_1/Chapter02_The_SQL_Language/data1.cvs' DELIMITER ',' csv HEADER;
-- Fuciona igual que una tabla si no se tiene organizada la data con el mismo orden de las columnas hay que explicitamente escribir como es el orden.
-- Para CleanCode es mejor que siempre tenga el orden escrito en el código.