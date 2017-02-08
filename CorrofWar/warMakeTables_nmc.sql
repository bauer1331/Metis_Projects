CREATE TABLE IF NOT EXISTS nmc (
    id serial primary key,
    stAbb varchar(20) NOT NULL,
    ccode varchar(20) NOT NULL,
    year int default null,
    irst int default null,
    milex int default null,
    milper int default null,
    pec decimal(30,15),
    tpop int default null,
    upop int default null,
    cinc decimal(20,15) default null,
    version varchar(10) default null
    );

COPY nmc
(stAbb,
    ccode,
    year,
    irst,
    milex,
    milper,
    pec,
    tpop,
    upop,
    cinc,
    version)
FROM '/home/bauer/midData/NMC_v4_0.csv' DELIMITER ',' CSV HEADER;

