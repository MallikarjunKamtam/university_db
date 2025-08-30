CREATE TABLE library.fines (
    fine_id SERIAL PRIMARY KEY,
    loan_id INT NOT NULL REFERENCES library.book_loans(loan_id),
    amount NUMERIC(7,2) CHECK (amount >= 0),
    paid BOOLEAN DEFAULT FALSE,
    fine_date DATE DEFAULT CURRENT_DATE
);
