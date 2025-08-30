CREATE TABLE academic.course_materials (
    material_id SERIAL PRIMARY KEY,
    course_id INT NOT NULL REFERENCES academic.courses(course_id),
    title VARCHAR(100) NOT NULL,
    material_type VARCHAR(50) CHECK (material_type IN ('Lecture Notes', 'Slide', 'Video', 'Assignment')),
    url TEXT,
    uploaded_on DATE DEFAULT CURRENT_DATE
);
