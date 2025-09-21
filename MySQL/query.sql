-- WHRERE Clause

SELECT * 
FROM employee_salary
WHERE first_name = 'Leslie'
;

SELECT * 
FROM employee_salary
WHERE salary >= 50000
;

SELECT * 
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55 
;

-- LIKE Statement
-- % and  _
SELECT * 
FROM employee_demographics
WHERE birth_date LIKE '1989%'
;


SELECT gender, AVG(age), MAX(age), MIN(age),COUNT(age) 
FROM employee_demographics
GROUP BY gender
;

-- ORDER BY
SELECT *
FROM employee_demographics
ORDER BY age ASC
;


-- HAVING
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40
;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000
;

-- LIMIT
SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1
;

SELECT gender, AVG(age) avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 41
;