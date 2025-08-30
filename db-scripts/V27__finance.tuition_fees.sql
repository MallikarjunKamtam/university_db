CREATE TABLE finance.tuition_fees (
    tuition_id SERIAL PRIMARY KEY,
    program_id INT NOT NULL REFERENCES academic.programs(program_id),
    year INT CHECK (year >= 2000),
    amount NUMERIC(10, 2) CHECK (amount >= 0)
);
