USE employees;

# SELECT first_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

# SELECT last_name FROM employees WHERE last_name LIKE 'E%' order by emp_no DESC;
#
# SELECT last_name FROM employees WHERE last_name LIKE 'E%' order by emp_no;


SELECT CONCAT(first_name,' ', last_name) FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e';

SELECT *
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25;


SELECT CONCAT(
    first_name, ' ', last_name,
    ' has been working at Company for ',
    UNIX_TIMESTAMP() - UNIX_TIMESTAMP(hire_date),
    ' seconds'
    )
FROM employees
WHERE  year(hire_date) BETWEEN 1990 AND 1999
AND month(birth_date) = 12
AND day(birth_date) = 25;

