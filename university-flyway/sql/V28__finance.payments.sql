CREATE TABLE finance.payments (
    payment_id SERIAL PRIMARY KEY,
    student_id INT NOT NULL REFERENCES academic.students(student_id),
    tuition_id INT NOT NULL REFERENCES finance.tuition_fees(tuition_id),
    payment_date DATE DEFAULT CURRENT_DATE,
    amount NUMERIC(10, 2) CHECK (amount >= 0),
    payment_method VARCHAR(50)
);
