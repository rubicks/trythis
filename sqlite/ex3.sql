-- sqlite/ex3.sql

create table person (
  id integer primary key,
  first_name text,
  last_name text,
  age integer
);

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

insert into person (id, first_name, last_name, age)
  values (0, "Zed", "Shaw", 37);

insert into pet (id, name, breed, age, dead)
  values (0, "Fluffy", "Unicorn", 1000, 0);

insert into pet values (1, "Gigantor", "Robot", 1, 1);

