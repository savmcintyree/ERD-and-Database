SELECT *
FROM customer;

CREATE TABLE customer (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  phone_number VARCHAR(25),
  email VARCHAR(50)
);

CREATE TABLE tickets(
  ticket_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  customer_name VARCHAR(50),
  quantity INTEGER,
  movie_title VARCHAR(50),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE concessions(
  concession_id SERIAL PRIMARY KEY,
  quantity INTEGER,
  concession_type VARCHAR(50),
  customer_id INTEGER
);

CREATE TABLE movies(
  movie_id SERIAL PRIMARY KEY,
  ticket_id INTEGER,
  run_time_minutes INTEGER,
  title VARCHAR(50),
  FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id)
);

ALTER TABLE customer
ALTER COLUMN first_name SET NOT NULL;

ALTER TABLE customer
ALTER COLUMN last_name SET NOT NULL;

ALTER TABLE concessions
ADD FOREIGN KEY (customer_id) REFERENCES customer(customer_id);
 