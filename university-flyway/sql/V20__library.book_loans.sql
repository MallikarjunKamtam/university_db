CREATE TABLE library.book_loans (
    loan_id SERIAL PRIMARY KEY,
    book_id INT NOT NULL REFERENCES library.books(book_id),
    student_id INT NOT NULL REFERENCES academic.students(student_id),
    loan_date DATE DEFAULT CURRENT_DATE,
    due_date DATE NOT NULL,
    return_date DATE
);
