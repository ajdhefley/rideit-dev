create table users
(
    userid   serial
        primary key,
    username varchar(45)  default NULL::character varying,
    password varchar(100) default NULL::character varying
);

alter table users
    owner to postgres;

create table reviewtags
(
    reviewtagid serial
        primary key,
    reviewid    integer      not null,
    tag         varchar(100) not null
);

alter table reviewtags
    owner to postgres;

create table reviews
(
    reviewid  serial
        primary key,
    coasterid integer      not null,
    userid    integer      not null,
    title     varchar(100) not null,
    body      text         not null,
    rating    numeric      not null,
    timestamp timestamp default CURRENT_TIMESTAMP
);

alter table reviews
    owner to postgres;

create table comments
(
    commentid       serial
        primary key,
    coasterid       integer                             not null,
    userid          integer                             not null,
    body            text                                not null,
    timestamp       timestamp default CURRENT_TIMESTAMP not null,
    likecount       integer   default 0                 not null,
    parentcommentid integer
);

alter table comments
    owner to postgres;

create table coasters
(
    coasterid          serial
        primary key,
    name               varchar(100) default NULL::character varying,
    park               varchar(100) default NULL::character varying,
    location           varchar(200) default NULL::character varying,
    type               varchar(5)   default NULL::character varying,
    model              varchar(100) default NULL::character varying,
    manufacturer       varchar(100) default NULL::character varying,
    lengthinft         numeric,
    heightinft         numeric,
    dropinft           numeric,
    speedinmph         numeric,
    inversions         integer,
    colorprimary       varchar(7)   default NULL::character varying,
    colorsecondary     varchar(7)   default NULL::character varying,
    openingdate        varchar(10)  default NULL::character varying,
    closedate          varchar(10)  default NULL::character varying,
    url                varchar(100) default NULL::character varying,
    carspertrain       integer,
    rowspercar         integer,
    insideseatsperrow  integer,
    outsideseatsperrow integer,
    rank               integer
);

alter table coasters
    owner to postgres;

create table coasterimages
(
    coasterimageid serial
        primary key,
    coasterid      integer      not null,
    imageurl       varchar(200) not null,
    width          integer,
    height         integer,
    base64         text,
    verified boolean NOT NULL DEFAULT false
);

alter table coasterimages
    owner to postgres;

create table oauthservices
(
    oauthserviceid serial
        primary key,
    servicename    varchar(50)
);

alter table oauthservices
    owner to postgres;

create table oauthusers
(
    coasterimageid serial
        primary key,
    oauthserviceid  integer not null,
    oauthidentifier varchar(100),
    userid          integer not null
);

alter table oauthusers
    owner to postgres;

