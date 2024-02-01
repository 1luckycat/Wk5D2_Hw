
--Week5 Day2 Homework

-- Thank you so much for your help Alex!  I was able to understand this alot better now!  Still iffy on some parts, but 
-- better than before lol :)


--1.  How many actors are there with the last name 'Wahlberg'?
select count(last_name)
from actor 
where last_name = 'Wahlberg';


--2.  How many payments were made between $3.99 and $5.99?
select count(amount)
from payment 
where amount between 3.99 and 5.99;


--3.  What film does the store have the most of? (search in inventory)
select film_id, count(film_id)
from inventory 
group by film_id
order by count(film_id) desc;


--4.  How many customers have the last name 'William'?
select count(last_name)
from customer 
where last_name = 'William';


--5.  What store employee (get the id) sold the most rentals?
select staff_id, count(rental_id)
from rental
group by staff_id
order by count(rental) desc
limit 1;


--6.  How many different district names are there?
select count(distinct district)
from address;


--7.  What film has the most actors in it? (use film_actor table and get film_id)
select film_id, count(actor_id)
from film_actor
group by film_id
order by count(actor_id) desc
limit 1;


--8.  From store_id 1, how many customers have a last name ending with 'es'? (use customer table)
select store_id, count(last_name)
from customer
where last_name like'%es' and store_id = 1
group by store_id
order by count(last_name);


--9.  How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with
--		ids between 380 and 430? (use group by and having > 250)
select count(amount), amount
from payment
where customer_id between 380 and 430
group by amount
having count(amount) > 250;


--10.  Within the film table, how many rating categories are there?  And what rating has the most movies total?
select count(rating), rating
from film
group by rating
order by count(rating) desc;

