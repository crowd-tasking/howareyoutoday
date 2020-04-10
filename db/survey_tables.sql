create table person_survey_settings (
    id serial primary key,
	person_id integer references people (id) not null,
    last_response_time timestamp,
    preferred_contact_mode character varying(1) default 'P', /* W - whatsapp, P - phone */
    survey_type character varying (1) default 'G' /* G - general, F - followup */
);

create table general_survey (
    id serial primary key,
    campaign_id integer references campaigns (id) not null,
	person_id integer references people (id) not null,
    household_id integer references households (id),
    did_not_respond boolean default false,
    /* survey fields */
    first_symptom_report boolean default false,
    members_with_symptoms integer default 0,
    /* auto filled */
    created_at timestamp default current_timestamp
);

create table followup_survey (
    id serial primary key,
    campaign_id integer references campaigns (id) not null,
	person_id integer references people (id) not null,
    household_id integer references households (id),
    did_not_respond boolean default false,
    /* survey fields */
    health_followup integer default 1,
    /* auto filled */
    created_at timestamp default current_timestamp
);
