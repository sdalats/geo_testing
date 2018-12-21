-- Drop table

DROP TABLE IF EXISTS census_raw.statespg;

CREATE TABLE census_raw.statespg (
    gid serial NOT NULL,
    division varchar(80) NULL,
    "__oid" float8 NULL,
    arealand float8 NULL,
    lsadc varchar(80) NULL,
    region varchar(80) NULL,
    geoid varchar(80) NULL,
    objectid int4 NULL,
    "name" varchar(80) NULL,
    intptlon varchar(80) NULL,
    centlat varchar(80) NULL,
    statens varchar(80) NULL,
    centlon varchar(80) NULL,
    funcstat varchar(80) NULL,
    intptlat varchar(80) NULL,
    stusab varchar(80) NULL,
    areawater float8 NULL,
    state varchar(80) NULL,
    basename varchar(80) NULL,
    mtfcc varchar(80) NULL,
    shape_detailed geometry NULL,
    CONSTRAINT statespg_pkey PRIMARY KEY (gid)
)
WITH (
    OIDS=FALSE
) ;
CREATE INDEX statespg2_gix ON census_raw.statespg USING gist (shape_detailed) ;
CREATE INDEX statespg_gix ON census_raw.statespg USING gist (shape_detailed) ;

ALTER TABLE census_raw.statespg OWNER TO sdrc_admins;

-- Drop table

DROP TABLE IF EXISTS census_raw.countiespg;

CREATE TABLE census_raw.countiespg (
    gid serial NOT NULL,
    mtfcc varchar(80) NULL,
    basename varchar(80) NULL,
    intptlat varchar(80) NULL,
    arealand float8 NULL,
    county varchar(80) NULL,
    areawater float8 NULL,
    objectid int4 NULL,
    intptlon varchar(80) NULL,
    countyns varchar(80) NULL,
    centlat varchar(80) NULL,
    geoid varchar(80) NULL,
    state varchar(80) NULL,
    funcstat varchar(80) NULL,
    lsadc varchar(80) NULL,
    "name" varchar(80) NULL,
    "__oid" float8 NULL,
    centlon varchar(80) NULL,
    countycc varchar(80) NULL,
    shape_detailed geometry NULL,
    CONSTRAINT countiespg_pkey PRIMARY KEY (gid)
)
WITH (
    OIDS=FALSE
) ;
CREATE INDEX countiespg_gix ON census_raw.countiespg USING gist (shape_detailed) ;

ALTER TABLE census_raw.countiespg OWNER TO sdrc_admins;
