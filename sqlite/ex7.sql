-- sqlite/ex7.sql

.read "ex4.sql"

-- make sure there are dead pets
select name, age from pet where 1 = dead ;

-- aww, poor robot
delete from pet where 1 = dead ;

-- make sure the robot is gone
select * from pet ;

-- resurrect the robot
insert into pet values (1, "Gigantor", "Robot", 1, 1);

-- the robot lives
select * from pet ;
