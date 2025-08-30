CREATE TABLE academic.course_offerings (
    offering_id SERIAL PRIMARY KEY,
    course_id INT NOT NULL REFERENCES academic.courses(course_id),
    faculty_id INT NOT NULL REFERENCES admin.faculties(faculty_id),
    semester VARCHAR(10) NOT NULL CHECK (semester IN ('Spring', 'Summer', 'Fall', 'Winter')),
    year INT CHECK (year >= 2000)
);
