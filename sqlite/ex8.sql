-- sqlite/ex8.sql

.read "ex7.sql"

delete from pet where id in (
  select pet.id
  from pet, person_pet, person
  where
  person_pet.person_id = person.id and
  person_pet.pet_id    = pet.id    and
  person.first_name    = "Zed"
);

select * from pet;
select * from person_pet;

delete from person_pet
  where pet_id not in (
    select id from pet
  );

select * from person_pet;
