CREATE TABLE system.role_permissions (
    role_id INT NOT NULL REFERENCES system.roles(role_id),
    permission_id INT NOT NULL REFERENCES system.permissions(permission_id),
    PRIMARY KEY (role_id, permission_id)
);
