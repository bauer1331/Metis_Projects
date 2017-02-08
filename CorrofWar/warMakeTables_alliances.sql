CREATE TABLE IF NOT EXISTS ally_directed_yr (
    version4id varchar(20) NOT NULL,
    ccode1 varchar(20) NOT NULL,
    state_name1 varchar(64) not null,
    ccode2 varchar(20) not null,
    state_name2 varchar(64) not null,
    dyad_st_day int default null,
    dyad_st_month int default null,
    dyad_st_year int default null,
    dyad_end_day int default null,
    dyad_end_month int default null,
    dyad_end_year int default null,
    left_censor int default null,
    right_censor int default null,
    defense int default null,
    neutrality int default null,
    nonagression int default null,
    entente int default null,
    year int default null,
    version varchar(10) default null,
    PRIMARY KEY (version4id,year,ccode1,ccode2)
    );

COPY ally_directed_yr 
(version4id,
    ccode1,
    state_name1,
    ccode2,
    state_name2,
    dyad_st_day,
    dyad_st_month,
    dyad_st_year,
    dyad_end_day,
    dyad_end_month,
    dyad_end_year,
    left_censor,
    right_censor,
    defense,
    neutrality,
    nonagression,
    entente,
    year,
    version )
FROM '/home/bauer/midData/alliance_v4.1_by_directed_yearly.csv' DELIMITER ',' CSV HEADER;



CREATE TABLE IF NOT EXISTS ally_directed (
	id serial primary key,
    version4id varchar(20) NOT NULL,
    ccode1 varchar(20) NOT NULL,
    state_name1 varchar(64) not null,
    ccode2 varchar(20) not null,
    state_name2 varchar(64) not null,
    dyad_st_day int default null,
    dyad_st_month int default null,
    dyad_st_year int default null,
    dyad_end_day int default null,
    dyad_end_month int default null,
    dyad_end_year int default null,
    left_censor int default null,
    right_censor int default null,
    defense int default null,
    neutrality int default null,
    nonagression int default null,
    entente int default null,
    version varchar(10) default null
    );

COPY ally_directed 
(version4id,
    ccode1,
    state_name1,
    ccode2,
    state_name2,
    dyad_st_day,
    dyad_st_month,
    dyad_st_year,
    dyad_end_day,
    dyad_end_month,
    dyad_end_year,
    left_censor,
    right_censor,
    defense,
    neutrality,
    nonagression,
    entente,
    version )
FROM '/home/bauer/midData/alliance_v4.1_by_directed.csv' DELIMITER ',' CSV HEADER;




CREATE TABLE IF NOT EXISTS ally_dyad_yr (
	id serial primary key,
    version4id varchar(20) NOT NULL,
    ccode1 varchar(20) NOT NULL,
    state_name1 varchar(64) not null,
    ccode2 varchar(20) not null,
    state_name2 varchar(64) not null,
    dyad_st_day int default null,
    dyad_st_month int default null,
    dyad_st_year int default null,
    dyad_end_day int default null,
    dyad_end_month int default null,
    dyad_end_year int default null,
    left_censor int default null,
    right_censor int default null,
    defense int default null,
    neutrality int default null,
    nonagression int default null,
    entente int default null,
    year int default null,
    version varchar(10) default null
    );

COPY ally_dyad_yr 
(version4id,
    ccode1,
    state_name1,
    ccode2,
    state_name2,
    dyad_st_day,
    dyad_st_month,
    dyad_st_year,
    dyad_end_day,
    dyad_end_month,
    dyad_end_year,
    left_censor,
    right_censor,
    defense,
    neutrality,
    nonagression,
    entente,
    year,
    version )
FROM '/home/bauer/midData/alliance_v4.1_by_dyad_yearly.csv' DELIMITER ',' CSV HEADER;



CREATE TABLE IF NOT EXISTS ally_dyad (
	id serial primary key,
    version4id varchar(20) NOT NULL,
    ccode1 varchar(20) NOT NULL,
    state_name1 varchar(64) not null,
    ccode2 varchar(20) not null,
    state_name2 varchar(64) not null,
    dyad_st_day int default null,
    dyad_st_month int default null,
    dyad_st_year int default null,
    dyad_end_day int default null,
    dyad_end_month int default null,
    dyad_end_year int default null,
    left_censor int default null,
    right_censor int default null,
    defense int default null,
    neutrality int default null,
    nonagression int default null,
    entente int default null,
    asym int default null,
    version varchar(10) default null
    );

COPY ally_dyad
(version4id,
    ccode1,
    state_name1,
    ccode2,
    state_name2,
    dyad_st_day,
    dyad_st_month,
    dyad_st_year,
    dyad_end_day,
    dyad_end_month,
    dyad_end_year,
    left_censor,
    right_censor,
    defense,
    neutrality,
    nonagression,
    asym,
    entente,
    version )
FROM '/home/bauer/midData/alliance_v4.1_by_dyad.csv' DELIMITER ',' CSV HEADER;



CREATE TABLE IF NOT EXISTS ally_member_yr (
	id serial primary key,
    version4id varchar(20) NOT NULL,
    ccode varchar(20) NOT NULL,
    state_name varchar(64) not null,
    all_st_day int default null,
    all_st_month int default null,
    all_st_year int default null,
    all_end_day int default null,
    all_end_month int default null,
    all_end_year int default null,
    ss_type varchar(64) default null,
    mem_st_day int default null,
    mem_st_month int default null,
    mem_st_year int default null,
    mem_end_day int default null,
    mem_end_month int default null,
    mem_end_year int default null,
    left_censor int default null,
    right_censor int default null,
    defense int default null,
    neutrality int default null,
    nonagression int default null,
    entente int default null,
    year int default null,
    version varchar(10) default null
    );

COPY ally_member_yr 
(version4id,
    ccode,
    state_name,
    all_st_day,
    all_st_month,
    all_st_year,
    all_end_day,
    all_end_month,
    all_end_year,
    ss_type,
    mem_st_day,
    mem_st_month,
    mem_st_year,
    mem_end_day,
    mem_end_month,
    mem_end_year,
    left_censor,
    right_censor,
    defense,
    neutrality,
    nonagression,
    entente,
    year,
    version )
FROM '/home/bauer/midData/alliance_v4.1_by_member_yearly.csv' DELIMITER ',' CSV HEADER;


CREATE TABLE IF NOT EXISTS ally_member (
	id serial primary key,
    version4id varchar(20) NOT NULL,
    ccode varchar(20) NOT NULL,
    state_name varchar(64) not null,
    all_st_day int default null,
    all_st_month int default null,
    all_st_year int default null,
    all_end_day int default null,
    all_end_month int default null,
    all_end_year int default null,
    ss_type varchar(64) default null,
    mem_st_day int default null,
    mem_st_month int default null,
    mem_st_year int default null,
    mem_end_day int default null,
    mem_end_month int default null,
    mem_end_year int default null,
    left_censor int default null,
    right_censor int default null,
    defense int default null,
    neutrality int default null,
    nonagression int default null,
    entente int default null,
    version varchar(10) default null
    );

COPY ally_member
(version4id,
    ccode,
    state_name,
    all_st_day,
    all_st_month,
    all_st_year,
    all_end_day,
    all_end_month,
    all_end_year,
    ss_type,
    mem_st_day,
    mem_st_month,
    mem_st_year,
    mem_end_day,
    mem_end_month,
    mem_end_year,
    left_censor,
    right_censor,
    defense,
    neutrality,
    nonagression,
    entente,
    version )
FROM '/home/bauer/midData/alliance_v4.1_by_member.csv' DELIMITER ',' CSV HEADER;


    ccode1 int NOT NULL,
    gameNum varchar(20) NOT NULL,
    gameID varchar(12) DEFAULT NULL,
    teamID text DEFAULT NULL,
    lgID text DEFAULT NULL,
    GP varchar(20) DEFAULT NULL,
    startingPos varchar(20) DEFAULT NULL,
    PRIMARY KEY (playerID,yearID,gameNum)
);