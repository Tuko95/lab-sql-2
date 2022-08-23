use sakila;

-- 1. Select all the actors with the first name ‘Scarlett’.

select * from actor;
select * from actor where first_name = "Scarlett";

-- 2. Select all the actors with the last name ‘Johansson’

select * from actor;
select * from actor where last_name = "Johansson";

-- 3. How many films (movies) are available for rent?

select * from film;
select count(*) from film;

-- 4. How many films have been rented?
select * from rental;
select count(*) from rental;

-- 5. What is the shortest and longest rental period?
select * from film;
select min(rental_duration) from film;
select max(rental_duration) from film;

-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select * from film;
select min(length) as min_duration from film;
select max(length) as max_duration from film;

-- 7. What's the average movie duration?
select * from film;
select avg(length) from film;

-- 8. What's the average movie duration expressed in format (hours, minutes)?
select * from film;
select datetime(avg(length)) from film; -- ♣♣♣♣♣♣♣♣♣♣ ERROR ♣♣♣♣♣♣♣♣♣♣

-- 9. How many movies longer than 3 hours?
select * from film;
select count(*) from film where length > 180;

-- 10. Get the name and email formatted  -- ♣♣♣♣♣♣♣♣♣♣ ERROR ♣♣♣♣♣♣♣♣♣♣♣
select * from customer;
select first_name, last_name, concat(email) as url from customer;
-- name_format = first_name + last_name

-- 11. What's the length of the longest film title?
select * from film;
select max(length(title)) as 'title length' from film;