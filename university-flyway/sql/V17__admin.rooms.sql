CREATE TABLE admin.rooms (
    room_id SERIAL PRIMARY KEY,
    building VARCHAR(100),
    room_number VARCHAR(20),
    capacity INT CHECK (capacity > 0),
    type VARCHAR(20) CHECK (type IN ('Lecture', 'Lab', 'Auditorium', 'Office'))
);
