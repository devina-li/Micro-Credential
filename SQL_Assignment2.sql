-- Question 1
select * from film
inner join film_actor
on film.film_id = film_actor.film_id

-- Question 2
select * from actor
inner join film_actor
on actor.actor_id = film_actor.actor_id

-- Question 3 
select first_name, last_name, title, rating
from actor, film_actor, film
where film.film_id = film_actor.film_id
and actor.actor_id = film_actor.actor_id
order by first_name, last_name desc;