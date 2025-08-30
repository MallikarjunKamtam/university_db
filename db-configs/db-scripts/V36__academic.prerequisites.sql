CREATE TABLE academic.prerequisites (
    course_id INT NOT NULL REFERENCES academic.courses(course_id),
    prerequisite_course_id INT NOT NULL REFERENCES academic.courses(course_id),
    PRIMARY KEY (course_id, prerequisite_course_id),
    CHECK (course_id <> prerequisite_course_id)
);
