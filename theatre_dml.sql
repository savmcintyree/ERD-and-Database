SELECT*
FROM customer;

INSERT INTO customer(
    first_name,
    last_name,
    phone_number,
    email
)
VALUES(
    'Savanna',
    'McIntyre',
    '111-111-1111',
    'savannamcintyre@hotmail.com'
);

SELECT *
FROM tickets;

INSERT INTO tickets(
    customer_id,
    customer_name,
    quantity,
    movie_title
)
VALUES(
    '1',
    'Savanna McIntyre',
    '2',
    'The Shining'
);

SELECT *
FROM concessions;

INSERT INTO concessions(
    quantity,
    concession_type,
    customer_id
)
VALUES(
    '1',
    'popcorn',
    '1'
);

SELECT *
FROM movies;

INSERT INTO movies(
    ticket_id,
    run_time_minutes,
    title
)
VALUES(
    '1',
    '60',
    'The Shining'
);