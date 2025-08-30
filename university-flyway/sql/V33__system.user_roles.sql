CREATE TABLE system.user_roles (
    user_id INT NOT NULL REFERENCES system.users(user_id),
    role_id INT NOT NULL REFERENCES system.roles(role_id),
    assigned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id, role_id)
);
