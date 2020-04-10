
create table household_health_journal (
    id serial primary key,
    household_id integer references households (id),
    household_family_num integer default 1,

    risk_score integer,
    number_of_people_with_symptoms integer default 0,
    has_suspected_covid_patient boolean default false,
    has_active_covid_patient boolean default false,
    has_recovered_covid_patient boolean default false,
    created_at timestamp default current_timestamp
);
