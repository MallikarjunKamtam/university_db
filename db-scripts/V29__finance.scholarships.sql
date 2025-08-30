CREATE TABLE finance.scholarships (
    scholarship_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    amount NUMERIC(10, 2) CHECK (amount >= 0),
    criteria TEXT
);
