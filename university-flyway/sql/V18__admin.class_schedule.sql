CREATE TABLE admin.class_schedule (
    schedule_id SERIAL PRIMARY KEY,
    offering_id INT NOT NULL REFERENCES academic.course_offerings(offering_id),
    room_id INT NOT NULL REFERENCES admin.rooms(room_id),
    day_of_week VARCHAR(10) CHECK (day_of_week IN ('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday')),
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    CONSTRAINT time_check CHECK (end_time > start_time)
);
