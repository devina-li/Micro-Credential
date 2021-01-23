-- Question 1
select * from film
inner join film_actor
on film.film_id = film_actor.film_id

-- Question 2
select * from actor
inner join film_actor
on actor.actor_id = film_actor.actor_id

-- Question 3 
select film.film_id, film_actor.actor_id, film_actor.film_id from film
inner join film_actor
on film.film_id = film_actor.film_id
inner join actor
on actor.actor_id = film_actor.actor_id