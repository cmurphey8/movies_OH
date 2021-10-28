-- MY TA TOLD ME THAT ANYTHING I CAN DO WITH NESTED SELECTS I CAN DO WITH JOINS, BUT IDK HOW TO COMBINE THESE INTO ONE QUERY??

-- put all Kevin Bacon movies in a new table kb_movies
CREATE TABLE kb_movies AS 
SELECT movie_id FROM 
    people JOIN stars ON people.id = stars.person_id
        JOIN movies ON movies.id = stars.movie_id
            WHERE name = 'Kevin Bacon' and birth = 1958;

-- get all Kevin Bacon co-stars 
SELECT COUNT(DISTINCT(name)) FROM 
    people JOIN stars on people.id = stars.person_id
        JOIN kb_movies on stars.movie_id = kb_movies.movie_id
            WHERE NOT name = 'Kevin Bacon';