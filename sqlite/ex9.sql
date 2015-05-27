-- sqlite/ex9.sql

.read "ex7.sql"

update person set first_name = "Hilarious Guy"
  where first_name = "Zed" ;

update pet set name = "Fancy Pants"
  where id = 0 ;

select * from person ;
select * from pet ;
