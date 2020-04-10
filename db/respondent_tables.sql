
create table campaigns (
	id serial primary key,
    code character varying(4),
    name character varying(20),
    city character varying(20),
    description character varying(200),
    number_of_respondents integer default 0,
    created_at timestamp default current_timestamp
);

create table households (
    id serial primary key,
    campaign_id integer references campaigns (id) not null,
    house_number character varying(6),
    section_number integer not null,
    section_name character varying(20),
    constituency_no integer,
    constituency_name character varying(20),
    location point
);

create table people (
	id serial primary key,
    campaign_id integer references campaigns (id) not null,
    household_id integer references households (id) default null,
    household_family_num integer default 1,

    /* main fields from voters card */
    full_name character varying(64),
    fathers_name character varying(64),
    husbands_name character varying(64),
    age integer,
    gender character varying(1),
    phone character varying(12),

    /* meta informaton */
    is_active boolean default true,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
);
