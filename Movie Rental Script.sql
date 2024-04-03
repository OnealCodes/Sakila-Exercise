USE Sakila;

-- Return actors with the first name ‘Scarlett'
SELECT actor_id, first_name
FROM actor
WHERE first_name LIKE "Scarlett";

-- Return actors with the last name ‘Johansson'
SELECT actor_id, last_name
FROM actor
WHERE last_name LIKE "Johansson";

-- Return how many distinct actors last names there are
SELECT count(DISTINCT last_name)
FROM actor;

-- Return Is ‘Academy Dinosaur’ available for rent from Store 1?
SELECT *
FROM film;
SELECT *
FROM inventory;

SELECT film.film_id, film.title, inventory.store_id
FROM film, inventory
WHERE title = "Academy Dinosaur" and store_id = 1;


-- Return the total running time of all the films in the sakila DB
SELECT sum(rental_duration) 
FROM film;

SELECT 
    CONCAT(
        SUM(rental_duration) DIV 60, "hours", 
        SUM(rental_duration) % 60, "minutes") AS total_running_time
FROM film;

-- Return the first and last names of all customers from the customer table.
SELECT first_name, last_name
FROM customer;

-- Return the first and last name of each customer in a single column in upper case letters. Name the column Customer Name.
SELECT CONCAT(first_name,  ' ',  last_name) AS "Customer Name"
FROM customer;

-- Return You need to find the ID number, first name, and last name of an actor, with first name, “Joe.”
SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name LIKE "%JOE%";

-- Return all actors whose last name contain the letters GEN
SELECT *
FROM actor
WHERE last_name LIKE "%GEN%";

-- Return all actors whose last names contain the letters LI
SELECT *
FROM actor
WHERE last_name LIKE "%LI%";

-- Return the country_id and country columns of the following countries: Afghanistan, Bangladesh, and China (Don’t use “OR”)
SELECT country_id, country
FROM country
WHERE country IN  ('Afghanistan', 'Bangladesh', 'China');

-- Return the last names of actors, as well as how many actors have that last name
SELECT last_name, count(last_name) AS actor_count
FROM actor
GROUP BY last_name;

-- Return last names of actors and the number of actors who have that last name, but only for names that are shared by at least two actors
SELECT last_name, count(last_name) AS actor_count
FROM actor
GROUP BY last_name
HAVING COUNT(last_name) >= 2;

-- Return the first name, last name and email address of all ACTIVE customers whose first name contain “An” and last name contains “O”.
SELECT first_name, last_name, email
FROM customer
WHERE first_name LIKE "%An%" AND last_name LIKE "%O%";

-- Return the film id, title, description, rental duration and length of movies whose special features is “Trailer” and are rated “G”.
SELECT film_id, title, description, rental_duration, length, special_features, rating
FROM film
WHERE special_features LIKE "%Trailer%" AND rating LIKE "G";



