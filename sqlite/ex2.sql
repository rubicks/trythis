-- sqlite/ex2.sql

.read "ex1.sql"

create table pet (
  id integer primary key,
  name text,
  breed text,
  age integer,
  dead integer
);

create table person_pet (
  person_id integer,
  pet_id integer
);
