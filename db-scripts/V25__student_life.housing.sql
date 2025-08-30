CREATE TABLE student_life.housing (
    housing_id SERIAL PRIMARY KEY,
    building_name VARCHAR(100) NOT NULL,
    address TEXT,
    capacity INT CHECK (capacity > 0)
);
