
USE Customer


CREATE TABLE tbl_customers (
	customers_id INT PRIMARY KEY NOT NULL IDENTITY (90,1),
	customers_fname VARCHAR(50)	NOT NULL,
	customers_lname VARCHAR(50)	NOT NULL
);

INSERT INTO tbl_customers	
	(customers_fname, customers_lname)
	VALUES 
	('olivia', 'wilde'),
	('anna', 'kendrick'),
	('heather', 'hogan'),
	('megan', 'fox'),
	('cindy', 'robinson')
;
SELECT * FROM tbl_customers;


CREATE TABLE tbl_contacts (
	contacts_id INT PRIMARY KEY NOT NULL IDENTITY (90,1),
	contacts_phone VARCHAR(50) NOT NULL,
	contacts_address VARCHAR(50) NOT NULL,
);

INSERT INTO tbl_contacts 
	(contacts_phone, contacts_address)
	VALUES
	('405-295-3095', '5967 Sunset Drive'),
	('596-795-3856', '1246 Still Pastures Drive'),
	('803-417-8667', '2639 Wisteria Lane'),
	('506-205-5857', '624 Jett Rd'),
	('707-535-4572', '3764 Marietta St')
;
ALTER TABLE tbl_customers 
ADD FOREIGN KEY (customers_id) REFERENCES tbl_contacts(contacts_id)
;

SELECT * FROM tbl_contacts
INNER JOIN tbl_customers ON tbl_customers.customers_id = tbl_contacts.contacts_id
WHERE customers_id= 92
;



