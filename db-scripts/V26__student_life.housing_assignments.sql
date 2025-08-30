CREATE TABLE student_life.housing_assignments (
    assignment_id SERIAL PRIMARY KEY,
    housing_id INT NOT NULL REFERENCES student_life.housing(housing_id),
    student_id INT NOT NULL REFERENCES academic.students(student_id),
    room_number VARCHAR(20),
    assigned_date DATE DEFAULT CURRENT_DATE,
    vacated_date DATE
);
