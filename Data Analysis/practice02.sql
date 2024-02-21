use guitar_shop;

#Q1
#1
SELECT card_number,
length(card_number) as card_numberlength,
right(card_number, 4) as last_four_digits
from orders;


#2
SELECT 
    orders, order_date,
    DATEADD(DAY, 2, order_date) AS approx_ship_date,
    DATEDIFF(DAY, order_date, DATEADD(DAY, 2, order_date)) AS days_to_ship
FROM 
    orders
WHERE
    YEAR('2015') AND MONTH('04');

#3
SELECT 
    product_name, list_price
FROM
    products
WHERE
    list_price > (SELECT AVG(list_price)
FROM products) ORDER BY list_price DESC;


#4
SELECT 
    category_name
FROM
    categories c
WHERE
    NOT EXISTS( SELECT 
            *
        FROM
            products p
        WHERE
            p.category_id = c.category_id);
 
use sakila;
 
#Q2
#1

SELECT first_name, last_name, actor_id
FROM actor
WHERE last_name LIKE '%LI%'
ORDER BY last_name, first_name DESC;

#2
SELECT last_name, count(last_name) AS 'last_n_frequency'
FROM actor
GROUP BY last_name
Having 'last_n_frequency' >= 2;

#3
SELECT title
FROM film
WHERE title LIKE '%K%'
AND language_id IN
(
 SELECT language_id
 FROM language
 WHERE name = 'English'
);

#4
SELECT first_name, last_name
FROM actor 
WHERE actor_id IN 
(
  SELECT actor_id
  FROM film_actor
  WHERE film_id = 
  (
     SELECT film_id
     FROM film
     WHERE title = 'Alien Centre'
    )
 );

use world;
#Q3
#1
SELECT name, continent 
FROM world 
WHERE continent IN (SELECT continent FROM world WHERE NAME IN ('Spain', 'Australia')) 
ORDER BY NAME;

#2
SELECT name, CONCAT(ROUND(population/(SELECT population FROM world WHERE name = 'Germany')*100), '%') FROM world WHERE continent = 'Europe';

#3
SELECT name FROM world WHERE gdp > ALL(SELECT gdp FROM world WHERE gdp > 0 AND continent = 'Asia');

#4
SELECT x.name, x.continent
FROM world AS x
WHERE x.population/3 > ALL (
  SELECT y.population
  FROM world AS y
  WHERE x.continent = y.continent
  AND x.name != y.name);
  
use employees;
#Q4
#1
SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS employee_name, salaries.salary 
FROM employees JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE salaries.salary = (SELECT MAX(salaries.salary) FROM salaries);

#2
SELECT gender, COUNT(*) AS total_count
FROM employees 
GROUP BY gender
ORDER BY total_count DESC;

#3
select  EXTRACT(YEAR FROM hire_date ),count(*) from employees group by EXTRACT(YEAR FROM 
hire_date);

#4


#5
SELECT * FROM employees
WHERE YEAR (hire_date) = 1999;