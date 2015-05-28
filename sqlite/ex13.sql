-- sqlite/ex13.sql

.read "ex7.sql"

-- Add a 'dead' column to 'person' that's like the one in 'pet'.
alter table person add column dead integer ;

-- Add a 'phone_number' column to 'person'.
alter table person add column phone_number text ;

-- Add a 'salary' column to 'person' that is a 'float'
alter table person add column salary float ;

-- Add a 'dob' column to both 'person' and 'pet' that is a 'datetime'.
alter table person add column dob datetime ;
alter table pet add column dob datetime ;

-- Add a 'purchased_on' column to 'person_pet' of type 'datetime'.
alter table person_pet add column purchased_on datetime ;

-- Add a 'parent' column to 'pet' that's an integer and holds the id for this
-- pet's parent
alter table pet add column parent integer ;

-- Update the existing database records wih the new column data using update
-- statements. Don't forget about the 'puchased_on' column in 'person_pet'
-- relation table to indicate when that person bought the pet.
update person
  set
    dead = 0,
    phone_number = '651.458.7952',
    salary = 100623.02,
    dob = datetime('1978-01-01 00:00:00')
  where id = 0 ;

update pet
  set
    parent = 0,
    dob = datetime('1980-01-01')
  where id = 0 ;

update pet
  set
    parent = 0,
    dob = datetime('now','-1 year')
  where id = 1 ;

update person_pet
  set purchased_on = datetime('1999-10-31 05:15:00')
  where pet_id = 0 ;

update person_pet
  set purchased_on = datetime('now','-6 months')
  where pet_id = 1 ;

-- Add 4 more people and 5 more pets and assign their ownership and what pets
-- are parents. On this last part remember that you get the id of the parent,
-- then set it in the parent column
insert into person
  (id, first_name, last_name, age, dead, phone_number, salary, dob)
  values
  (1, 'Joe', 'Blow', 19, 1, '508.697.3680', 42069.12, datetime('now','-19 years')),
  (2, 'Sue', 'Shar', 27, 1, '508.531.1000', 13576.02, datetime('now','-27 years')),
  (3, 'Art', 'Mosh', 22, 1, '781.822.2289', 42069.12, datetime('now','-22 years')),
  (4, 'Jen', 'Vers', 31, 1, '413.501.4545', 42069.12, datetime('now','-31 years'))
  ;

insert into pet
  (id, name, breed, age, dead, dob, parent)
  values
  (2, 'Ralph', 'cat', 18, 1, datetime('now','-18 years'), 1),
  (3, 'Frankie', 'cat', 7, 0, datetime('now','-7 years'), 2),
  (4, 'Rex', 'cat', 2, 0, datetime('now','-2 years'), 1),
  (5, 'Harvey', 'cat', 3, 0, datetime('now','-3 years'), 1),
  (6, 'Broseph', 'cat', 5, 1, datetime('now','-5 years'), 1)
  ;

select * from person ;
select * from pet ;
select * from person_pet ;
