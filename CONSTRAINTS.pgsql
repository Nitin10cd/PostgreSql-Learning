-- CHECK CONSTRAINTS also named constraint
ALTER TABLE employee
ADD COLUMN 
	mob VARCHAR(15)
		CHECK (LENGTH(mob) >= 10);

ALTER TABLE employee
DROP CONSTRAINT person_mob_check;
