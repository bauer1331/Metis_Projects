CREATE TABLE IF NOT EXISTS diplomaticExchange (
    id serial primary key,
    ccode1 varchar(20) NOT NULL,
    ccode2 varchar(20) not null,
    year int default null,
    DR_at_1 int default null,
    DR_at_2 int default null,
    DF int default null,
    version varchar(20) default null
    );

COPY diplomaticExchange 
(   ccode1,
    ccode2,
    year,
    DR_at_1,
    DR_at_2,
    DF,
    version )
FROM '/home/bauer/midData/Diplomatic_Exchange_2006v1.csv' DELIMITER ',' CSV HEADER;