/* Database schema to keep the structure of entire database. */

CREATE TABLE animals(
id BIGSERIAL, 
name varchar(100), 
date_of_birth date,
escape_attempts integer,
neutered boolean,
weight_kg decimal
);

ALTER TABLE animals ADD species varchar(100);


CREATE TABLE owners(
    id SERIAL PRIMARY_KEY,
    full_name varchar(20),
    age int,
    PRIMARY_KEY(id)
);

ALTER TABLE owners ADD CONSTRAINT owners_pk PRIMARY KEY(id);

CREATE TABLE species(
    id SERIAL PRIMARY_KEY,
    name varchar(20),
);

ALTER TABLE species ADD CONSTRAINT species_pk PRIMARY KEY(id);

ALTER TABLE animals DROP COLUMN species;

/* add foreign key to the animal table for species_id referencing the species table primary key */

ALTER TABLE animals ADD species_id int;

ALTER TABLE animals ADD CONSTRAINT animals_fk FOREIGN KEY(species_id) REFERENCING species(id);

/* add foreign key to the animal table for species_id referencing the owners table primary key */

ALTER TABLE animals ADD owners_id int;

ALTER TABLE animals ADD CONSTRAINT animals_fk FOREIGN KEY(owners_id) REFERENCES owners(id);


CREATE TABLE vets (
    id BIGSERIAL PRIMARY KEY,
    name varchar(100),
    age integer,
    date_of_graduation date
);

CREATE TABLE specializations (
    species_id integer,
    vet_id integer
);

CREATE TABLE visits (
    animal_id int,
    vet_id int,
    date_of_visit date
);



