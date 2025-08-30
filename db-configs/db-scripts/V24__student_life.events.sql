CREATE TABLE student_life.events (
    event_id SERIAL PRIMARY KEY,
    club_id INT NOT NULL REFERENCES student_life.clubs(club_id),
    event_name VARCHAR(100) NOT NULL,
    event_date DATE NOT NULL,
    location VARCHAR(100),
    description TEXT
);
