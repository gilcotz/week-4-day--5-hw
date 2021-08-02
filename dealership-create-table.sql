--customer table
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	address VARCHAR(100),
	email VARCHAR(80),
	contact_number VARCHAR(50),
	billing_info VARCHAR(50)	
); 

-- CAR table 
CREATE TABLE car(
	car_id SERIAL PRIMARY KEY,
	year_ NUMERIC(4),
	make VARCHAR(20),
	model VARCHAR(20),
	color VARCHAR(20),
	is_new BOOLEAN,
	previous_owner INTEGER,
	mileage NUMERIC(7,1),
	in_stock BOOLEAN,
	price NUMERIC(8,2)
);
-- salesperson table 
CREATE TABLE sales_person(
	salesperson_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	contact_number VARCHAR(20)
);

-- mechanic table
CREATE TABLE mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	contact_number VARCHAR(20)
);
-- parts table
CREATE TABLE parts(
	part_id SERIAL PRIMARY KEY,
	name_ VARCHAR(25),
	brand VARCHAR(25),
	supplier VARCHAR(50),
	stock INTEGER,
	location_ VARCHAR(10),
	cost_ NUMERIC(6,2)
);

-- invoice table--

CREATE TABLE invoice(
	invoice_id SERIAL PRIMARY KEY,
	customer_id INTEGER,
	car_id INTEGER,
	salesperson_id INTEGER,
	final_price NUMERIC(8,2),
	invoice_date timestamp,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (car_id) REFERENCES car(car_id),
	FOREIGN KEY (salesperson_id) REFERENCES sales_person(salesperson_id)
);

--service ticket table
CREATE TABLE service_ticket(
	service_id SERIAL PRIMARY KEY,
	car_id INTEGER,
	customer_id INTEGER,
	mechanic_id INTEGER,
	part_id INTEGER,
	price NUMERIC(7,2),
	description VARCHAR(100),
	repair_date timestamp,
	FOREIGN KEY (car_id) REFERENCES car(car_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
	FOREIGN KEY (part_id) REFERENCES parts(part_id)
); 


SELECT *
FROM service_ticket