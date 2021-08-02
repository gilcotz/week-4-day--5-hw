--customer insert table
INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address,
	email,
	contact_number,
	billing_info
)VALUES(
	01,
	'Son', 
	'Goku',
	'1600 Pennselvenia Ave, Washington DC 20500',
	'songoku@dragonball.edu',
	'690-696-969',
	'1234-5678-9101-1112 131 04/15'
);
SELECT *
FROM mechanic
-- car insert table
INSERT INTO car(
	car_id,
	year_,
	make,
	model,
	color,
	is_new,
	previous_owner,
	mileage,
	in_stock,
	price
)VALUES(
	001,
	'2025',
	'Lexus',
	'IS 500',
	'Orange',
	'YES',
	'0',
	'3.9',
	'yes',
	'89000.00'
);

--insert table salesperson
INSERT INTO sales_person(
	salesperson_id,
	first_name,
	last_name,
	email,
	contact_number
)VALUES(
	007,
	'John',
	'Wick',
	'johnwick@tarasov.rus',
	'8 499 123-45-67'
);
--insert mechanic table
INSERT INTO mechanic(
	mechanic_id,
	first_name,
	last_name,
	email,
	contact_number
)VALUES(
	0001,
	'Tony',
	'Stark',
	'tonystark@marvel.com',
	'212-453-7645'
);
--insert parts table
INSERT INTO parts(
	part_id,
	name_,
	brand,
	supplier,
	stock,
	location_,
	cost_
)VALUES(
	8798,
	'window tint',
	'3M',
	'3M',
	'876',
	'shelf-342',
	'43.00'
);
	
-- insert invoice table
INSERT INTO invoice(
	invoice_id,
	customer_id,
	car_id,
	salesperson_id,
	final_price,
	invoice_date
)VALUES(
	1,
	01, 
	001,
	007,
	89853.98,
	'02/13/2020'
);
SELECT *
FROM invoice
-- insert service ticket table 
INSERT INTO service_ticket(
	service_id,
	car_id,
	customer_id,
	mechanic_id,
	part_id,
	price,
	description,
	repair_date
)VALUES(
	00001,
	001, 
	01,
	0001,
	8798,
	0,
	'car wash',
	'02/13/2020'
);	
--------------- this is for the second costumer info-------------

--customer 2 insert table
INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address,
	email,
	contact_number,
	billing_info
)VALUES(
	02,
	'Billy', 
	'Jean',
	'555 crisstan st, Berverly Hills, 98653',
	'biljean@yourhouse.io',
	'563-232-8764',
	'1234-5678-2454-1112 131 04/15'
);
SELECT *
FROM customer
-- car insert table
INSERT INTO car(
	car_id,
	year_,
	make,
	model,
	color,
	is_new,
	previous_owner,
	mileage,
	in_stock,
	price
)VALUES(
	002,
	'2019',
	'Mclaren',
	'P1',
	'Orange',
	'NO',
	'0',
	'309',
	'NO',
	'0'
);

--insert table salesperson
INSERT INTO sales_person(
	salesperson_id,
	first_name,
	last_name,
	email,
	contact_number
)VALUES(
	0,
	'none',
	'none',
	'none',
	0
);
--insert mechanic table
INSERT INTO mechanic(
	mechanic_id,
	first_name,
	last_name,
	email,
	contact_number
)VALUES(
	0002,
	'Tony',
	'Stark',
	'tonystark@marvel.com',
	'212-453-7645'
);
--insert parts table
INSERT INTO parts(
	part_id,
	name_,
	brand,
	supplier,
	stock,
	location_,
	cost_
)VALUES(
	89,
	'window tint',
	'3M',
	'3M',
	'876',
	'shelf-342',
	'43.00'
);
	
-- insert invoice table
INSERT INTO invoice(
	invoice_id,
	customer_id,
	car_id,
	salesperson_id,
	final_price,
	invoice_date
)VALUES(
	2,
	02, 
	002,
	0,
	89,
	'02/14/2020'
);
SELECT *
FROM invoice
-- insert service ticket table 
INSERT INTO service_ticket(
	service_id,
	car_id,
	customer_id,
	mechanic_id,
	part_id,
	price,
	description,
	repair_date
)VALUES(
	00002,
	002, 
	02,
	0002,
	89,
	245.89,
	'car wash',
	'02/13/2020'
);	

