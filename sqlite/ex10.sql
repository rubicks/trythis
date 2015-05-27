-- sqlite/ex10.sql

.read "ex7.sql"

select * from pet ;

update pet set name = "Zeds Pet" where id in (
  select pet.id
  from pet, person_pet, person
  where
  person_pet.person_id = person.id and
  person_pet.pet_id    = pet.id    and
  person.first_name = "Zed"
);

select * from pet ;
