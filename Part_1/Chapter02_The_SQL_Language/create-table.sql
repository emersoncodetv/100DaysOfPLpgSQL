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
values ('San Francisco',
'(-194.0, 53.0)');


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



-- JOIN entre tablas

select * from weather w ;
select * from cities c ;

select * from weather w , cities c where w.city = c.name;

select w.city , w.temperature_low, w.temperature_high , c."location" from weather w , cities c where w.city = c."name" ;


select w.city , w.temperature_low, w.temperature_high , c."location" from weather w , cities c ;


select * from weather inner join cities on (weather.city = cities.name);



select * from weather w left outer join cities c on w.city = c."name" ;

select * from weather w right outer join cities c on w.city = c."name" ;

select * from weather w full join cities c on w.city = c."name" ;

select  
	w1.city,
	w1.temperature_low as low,
	w1.temperature_high as high,
	w2.city,
	w2.temperature_low as low,
	w2.temperature_high as high
from weather w1, weather w2 
	where (w1.temperature_low < w2.temperature_low  
	and w1.temperature_high > w2.temperature_high) ;












