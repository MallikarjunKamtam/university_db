CREATE TABLE library.publishers (
    publisher_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    address TEXT,
    contact_email VARCHAR(100)
);


ALTER TABLE library.books
ADD COLUMN publisher_id INT REFERENCES library.publishers(publisher_id);
