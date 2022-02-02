use sakila;
#How many distinct (different) actors' last names are there?
select Count(distinct(last_name)) from actor;
#In how many different languages where the films originally produced? (Use the column language_id from the film table)
select Count(distinct(language_id)) from language;
#How many movies were released with "PG-13" rating?
select * from film;
select Count(rating) from film
where rating = "PG-13";
#Get 10 the longest movies from 2006.
select TITLE, LENGTH from film
ORDER BY LENGTH desc
LIMIT 10;
#How many days has been the company operating (check DATEDIFF() function)?
SELECT * FROM RENTAL;
select DATEDIFF(Now(), MIN(rental_date)) as date_dif from rental;
#Show rental info with additional columns month and weekday. Get 20.
select *from rental;
select rental_id, DATE_FORMAT(rental_date, "%M")as _month ,WEEKDAY(rental_date) as weekday 
from rental
limit 20;
#Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
select rental_date from rental;
select rental_id, DATE_FORMAT(rental_date, "%M")as _month ,WEEKDAY(rental_date) as weekday ,	CASE WHEN (DAYNAME(rental_date) = "Saturday") THEN "weekend"WHEN (DAYNAME(rental_date) = "Sunday") THEN "weekend" ELSE"weekday" END as day_date
from rental;
#How many rentals were in the last month of activity?
select *from rental;
SELECT count(rental_date) 
FROM rental 
WHERE rental_date BETWEEN '2005-05-01' AND '2005-05-31'


