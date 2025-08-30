CREATE TABLE library.books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    publisher VARCHAR(100),
    published_year INT CHECK (
        published_year BETWEEN 1800 AND EXTRACT(YEAR FROM CURRENT_DATE)
    ),
    total_copies INT CHECK (total_copies >= 0)
);
