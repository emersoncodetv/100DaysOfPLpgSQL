CREATE TABLE weather2 ( 
city VARCHAR(80),
City VARCHAR(80),
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

INSERT INTO weather
    VALUES ('San Francisco', 46, 50, 0.25, '1994-11-27');