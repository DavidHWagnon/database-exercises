USE join_test_db;
INSERT INTO users(name,email, role_id)
VALUES ('David', 'david@gm.com', 2),
    ('Dave', 'dave@gmail.com.com', 2),
    ('Bob', 'bob@gm.com', 2),
    ('Nick', 'Nick@gm.com', NULL)
    ;

SELECT users.name AS user_name, roles.name AS role_name
FROM users LEFT JOIN roles
ON users.role_id = roles.id;

SELECT roles.name AS role_name, users.name AS user_name
FROM users RIGHT JOIN roles
ON roles.id = users.role_id;

USE employees;
SELECT
    d.dept_name AS 'Department Name',
    CONCAT(e.first_name, ' ', e.last_name) AS current_department_manager
FROM employees AS e
         JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
    AND to_date > CURDATE()
         JOIN departments AS d USING(dept_no)
ORDER BY dept_name;