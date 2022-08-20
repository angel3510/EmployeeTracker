INSERT INTO department (name)
VALUES ('Legal'),
    ('Sales'),
    ('Engineering');
INSERT INTO roles (title, salary, department_id)
VALUES ('Legal Team Lead', 250000, 1),
    ('Lawyer', 170000, 1),
    ('Sales Lead', 100000, 2),
    ('Salesperson', 70000, 2),
    ('Lead Engineer', 150000, 3),
    ('Engineer', 120000, 3);
INSERT INTO employee (
        first_name,
        last_name,
        role_id,
        manager_id,
        manager_confirm
    )
VALUES ('', '', 1, null, true),
    ('', '', 2, 1, false),
    ('', '', 2, 1, false),
    ('', '', 3, null, true),
    ('', '', 4, 2, false),
    ('', '', 4, 2, false),
    ('', '', 4, 2, false),
    ('', '', 5, null, true),
    ('', '', 6, 3, false),
    ('', '', 6, 3, false);
INSERT INTO manager (first_name, last_name)
SELECT first_name,
    last_name
FROM employee
WHERE manager_confirm = 1;