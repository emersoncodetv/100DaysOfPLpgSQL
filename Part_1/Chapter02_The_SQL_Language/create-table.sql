create table weather ( city varchar(80),
temperature_low int,
temperature_high int,
precipitation real,
date date );

select
	*
from
	weather;

create table cities ( name varchar(80),
location point );

drop table weather;

drop table cities ;

insert
	into
	weather
values ('San Francisco',
46,
50,
0.25,
'1994-11-27');
-- En este ejemplo de insercion de datos vemos que no es tan legible. Si un desarrollador nuevo llega a ver este codigo se va a dar cuenta que tiene que ir a revisar la tabla para sabaer en que columna esta cayendo cada valor.
 select
	*
from
	weather;

insert
	into
	cities
values ('San Francico',
'(-194.0, 53.0)')
select
	*
from
	cities;

insert
	into
	weather (date,
	city,
	temperature_high,
	temperature_low,
	precipitation)
values ('1994-11-29',
'Hayward',
54,
37,
0.1);

select
	*
from
	weather;

copy weather(date,
city,
temperature_high,
temperature_low)
from
'/Users/emerson/Documents/100DAYS/100DaysOfPLpgSQL/Part_1/Chapter02_The_SQL_Language/data1.cvs' delimiter ',' csv header;
-- Fuciona igual que una tabla si no se tiene organizada la data con el mismo orden de las columnas hay que explicitamente escribir como es el orden.
-- Para CleanCode es mejor que siempre tenga el orden escrito en el código.

-- Consultando y organizando las conlumnas diferente a la de la tabla creada en la base de datos
 select
 	w.city ,
	w."date",
	w.temperature_low ,
	w.temperature_high ,
	w.precipitation
from
	weather w ;
-- Expreciones en los select
 select
	w.city ,
	(w.temperature_high + w.temperature_low)/ 2 as Averrage_Temperature
from
	weather w ;
-- Opciones de cualificacion
 select
	*
from
	weather w
where w.city = 'Hayward'
and w.precipitation > 0.0;

-- Opciones de cualificacion ordenar

select *
from weather w
order by city;

select * 
from weather w
order by city, temperature_low;

select distinct
w.city , w.temperature_low
from weather w;


select distinct 
w.city , w.temperature_low
from weather w
order by city ;