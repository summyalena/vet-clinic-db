/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Agumon', date '2020-02-03', '0', 'true', '10.23');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Gabumon', date '2018-11-15', '2', 'true', '8');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Pikachu', date '2021-01-07', '1', 'false', '15.04');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Devimon', date '2017-05-12', '5', 'true', '11');


/* 2nd day */

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Charmander', date '2020-02-08', '0', 'false', '11.0');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Plantmon', date '2021-11-15', '2', 'true', '5.7');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Squirtel', date '1993-04-2', '3', 'false', '3');

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Angemon', date '2005-06-12', '1', 'true', '45.0');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Boarmon', date '2005-06-07', '7', 'true', '20.4')
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Blossom', date '1998-10-13', '3', 'true', '17');
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Ditto', date '2022-05-14', '4', 'true', '22');


/* 3rd day */

INSERT INTO owners (full_name, age) VALUES ('Sam Smith', '34');
INSERT INTO owners (full_name, age) VALUES ('Jennifer Orwell', '19');
INSERT INTO owners (full_name, age) VALUES ('Bob', '45');
INSERT INTO owners (full_name, age) VALUES ('Melody Pond', '77');
INSERT INTO owners (full_name, age) VALUES ('Dean Winchester', '14');
INSERT INTO owners (full_name, age) VALUES ('Jodie Whittaker', '38');

INSERT INTO species (name) VALUES ('Pokemon');
INSERT INTO species (name) VALUES ('Digimon');

UPDATE TABLE animals SET species_id '2' WHERE name LIKE '%mon';
UPDATE TABLE animals SET species_id '1' WHERE name NOT LIKE '%mon';

UPDATE TABLE animals SET owners_id '1' WHERE name = 'Agumon';
UPDATE TABLE animals SET owners_id '2' WHERE name = 'Gabumon' OR name= 'Pikachu';
UPDATE TABLE animals SET owners_id '3' WHERE name = 'Devimon' OR name = 'Plantmon';
UPDATE TABLE animals SET owners_id '4' WHERE name = 'Charmander' OR name = 'Squirtel' OR name = 'Blossom';
UPDATE TABLE animals SET owners_id '5' WHERE name = 'Angemon' OR name = 'Boarmon';



/* 4th day */

INSERT INTO vets (name, age, date_of_graduation) VALUES ('William Tatcher', 45, date '2000-04-23');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Maisy Smith', 26, date '2019-01-17');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Stephanie Mendez', 64, date '1981-05-04');
INSERT INTO vets (name, age, date_of_graduation) VALUES ('Jack Harkness', 38, date '2008-06-08');


INSERT INTO "specializations" (vet_id, species_id) VALUES (1, 1);
INSERT INTO "specializations" (vet_id, species_id) VALUES (3, 1);
INSERT INTO "specializations" (vet_id, species_id) VALUES (3, 2);
INSERT INTO "specializations" (vet_id, species_id) VALUES (4, 2);


INSERT INTO "visits" (animal_id, vet_id, date_of_visit) VALUES ('1', '1', date '2020-05-24');
INSERT INTO "visits" (animal_id, vet_id, date_of_visit) VALUES ('1', '1', date '2020-05-24');
INSERT INTO "visits" (animal_id, vet_id, date_of_visit) VALUES ('1', '3', date '2020-07-22');
INSERT INTO "visits" (animal_id, vet_id, date_of_visit) VALUES ('2', '4', date '2021-02-02');
INSERT INTO "visits" (animal_id, vet_id, date_of_visit) VALUES ('3', '2', date '2020-01-05');
INSERT INTO "visits" (animal_id, vet_id, date_of_visit) VALUES ('3', '2', date '2020-03-08');
INSERT INTO "visits" (animal_id, vet_id, date_of_visit) VALUES ('3', '2', date '2020-05-14');
INSERT INTO "visits" (animal_id, vet_id, date_of_visit) VALUES ('4', '3', date '2021-05-04');
INSERT INTO "visits" (animal_id, vet_id, date_of_visit) VALUES ('5', '4', date '2021-02-24');
INSERT INTO "visits" (animal_id, vet_id, date_of_visit) VALUES ('6', '2', date '2019-12-21');
INSERT INTO "visits" (animal_id, vet_id, date_of_visit) VALUES ('6', '1', date '2020-08-10');
INSERT INTO "visits" (animal_id, vet_id, date_of_visit) VALUES ('6', '2', date '2021-04-07');
INSERT INTO "visits" (animal_id, vet_id, date_of_visit) VALUES ('7', '3', date '2019-09-29');
INSERT INTO "visits" (animal_id, vet_id, date_of_visit) VALUES ('8', '4', date '2020-10-03');
INSERT INTO "visits" (animal_id, vet_id, date_of_visit) VALUES ('8', '4', date '2020-11-04');
INSERT INTO "visits" (animal_id, vet_id, date_of_visit) VALUES ('9', '2', date '2019-01-24');
INSERT INTO "visits" (animal_id, vet_id, date_of_visit) VALUES ('9', '2', date '2019-05-15');
INSERT INTO "visits" (animal_id, vet_id, date_of_visit) VALUES ('9', '2', date '2020-02-27');
INSERT INTO "visits" (animal_id, vet_id, date_of_visit) VALUES ('9', '2', date '2020-08-03');
INSERT INTO "visits" (animal_id, vet_id, date_of_visit) VALUES ('10', '3', date '2020-05-24');
INSERT INTO "visits" (animal_id, vet_id, date_of_visit) VALUES ('10', '1', date '2021-01-11');

