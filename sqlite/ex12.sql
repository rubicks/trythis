-- sqlite/ex12.sql

.read "ex7.sql"

-- only drop table if it exists
drop table if exists person ;

-- create again to work with it
create table person (
  id integer primary key,
  first_name text,
  last_name text,
  age integer
);

-- rename the tabel to peoples
alter table person rename to peoples ;

-- add a hatred column to peoples
alter table peoples add column hatred integer ;

-- rename peoples back to person
alter table peoples rename to person ;

.schema person

-- we don't need that
drop table person ;
