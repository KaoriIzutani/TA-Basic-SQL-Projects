CREATE TABLE tbl_animalia (
	animalia_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	animalia_type VARCHAR(50) NOT NULL
	);

INSERT INTO tbl_animalia
	(animalia_type)
	VALUES
	('vertebrate'),
	('invertebrate')
;
SELECT * FROM tbl_animalia;

CREATE TABLE tbl_class (
	class_id /*This is a good example of keeping your naming conventions consistent*/
	INT PRIMARY KEY NOT NULL IDENTITY (100, 1),
	class_type VARCHAR(50) NOT NULL
	);

SELECT * FROM tbl_class;

INSERT INTO tbl_class
	(class_type)
	VALUES
	('bird'),
	('reptilian'),
	('mammal'),
	('arthropod'),
	('fish'),
	('worm'),
	('cnidaria'),
	('echinoderm')
	;
	SELECT * FROM tbl_class;

	UPDATE tbl_class SET class_type = 'bird' WHERE class_type = 'birds';

	SELECT * FROM tbl_class;

	SELECT REPLACE(class_type,'mammal','mammals') FROM tbl_class;

	SELECT UPPER (class_type) FROM tbl_class WHERE class_type = 'bird';

	SELECT COUNT (class_type) FROM tbl_class WHERE class_type = 'bird';

	CREATE TABLE tbl_persons (
	persons_id INT PRIMARY KEY NOT NULL IDENTITY (100, 1),
	persons_fname VARCHAR(50) NOT NULL,
	persons_lname VARCHAR(50) NOT NULL,
	persons_contact VARCHAR(50) NOT NULL
	);

	INSERT INTO tbl_persons
		(persons_fname, persons_lname, persons_contact)
		VALUES
		('big','bird','503-232-5768'),
		('snuffle','upagus','503-485-2046'),
		('the','count','503-123-4567'),
		('elmo','tickle','503-354-7988'),
		('oscar','grouch','503-315-8674')
	;
UPDATE tbl_persons SET persons_fname = 'bruno' WHERE persons_fname = 'mars';


	SELECT persons_fname, persons_lname, persons_contact FROM tbl_persons 
	WHERE persons_lname LIKE '_r%h';

	SELECT persons_fname AS 'First Name', persons_lname AS 'Last Name', 
	persons_contact AS 'Phone:'FROM tbl_persons WHERE persons_fname 
	LIKE 'b%' ORDER BY persons_lname;

	
	UPDATE tbl_persons SET persons_fname = 'mary' WHERE persons_fname = 'the';

	DELETE FROM tbl_persons WHERE persons_lname = 'grouch';

	SELECT * FROM tbl_persons;

	DROP TABLE tbl_persons;
	
