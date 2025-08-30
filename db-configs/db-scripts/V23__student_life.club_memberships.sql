CREATE TABLE student_life.club_memberships (
    membership_id SERIAL PRIMARY KEY,
    club_id INT NOT NULL REFERENCES student_life.clubs(club_id),
    student_id INT NOT NULL REFERENCES academic.students(student_id),
    join_date DATE DEFAULT CURRENT_DATE,
    role VARCHAR(50) DEFAULT 'Member'
);
