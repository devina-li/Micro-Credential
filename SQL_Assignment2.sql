-- Question 1
select * from film
inner join film_actor
on film.film_id = film_actor.film_id

-- Question 2
select * from actor
inner join film_actor
on actor.actor_id = film_actor.actor_id

-- Question 3 
select actor.actor_id, film_actor.actor_id, film_actor.film_id from actor
inner join film_actor
on actor.actor_id = film_actor.actor_id
inner join film
on film.film_id = film_actor.film_id