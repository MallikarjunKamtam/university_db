CREATE TABLE student_life.clubs (
    club_id SERIAL PRIMARY KEY,
    club_name VARCHAR(100) NOT NULL UNIQUE,
    description TEXT,
    founding_year INT CHECK (founding_year > 1900 AND founding_year <= EXTRACT(YEAR FROM CURRENT_DATE))
);
