-- sqlite/ex5.sql

.read "ex4.sql"

select * from person ;

select name, age from pet ;

select name, age from pet where dead = 0 ;

select * from person where first_name != "Zed" ;
