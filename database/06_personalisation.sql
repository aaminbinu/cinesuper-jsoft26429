-- Phase 12: new genre and 5 new movies
insert into genres (name) values ('Horror');

insert into movies (title, release_year, language, duration_min, description, poster_url, genre_id) values
('Kumbalangi Nights', 2019, 'Malayalam', 135, 'Four brothers in a fishing village learn to become a family.', 'https://placehold.co/300x450/0f766e/ffffff?text=Kumbalangi+Nights', (select id from genres where name = 'Drama')),
('Ratsasan', 2018, 'Tamil', 170, 'A young cop hunts a serial killer who targets schoolgirls.', 'https://placehold.co/300x450/7f1d1d/ffffff?text=Ratsasan', (select id from genres where name = 'Thriller')),
('Tumbbad', 2018, 'Hindi', 104, 'A greedy man keeps going back for a cursed treasure.', 'https://placehold.co/300x450/422006/ffffff?text=Tumbbad', (select id from genres where name = 'Horror')),
('The Prestige', 2006, 'English', 130, 'Two rival magicians push their obsession too far.', 'https://placehold.co/300x450/1e1b4b/ffffff?text=The+Prestige', (select id from genres where name = 'Thriller')),
('3 Idiots', 2009, 'Hindi', 170, 'Three engineering students and a friendship that changes their lives.', 'https://placehold.co/300x450/b45309/ffffff?text=3+Idiots', (select id from genres where name = 'Comedy'));

-- Phase 12: new column
alter table movies add column director text;

update movies set director = 'Christopher Nolan'
where title in ('Memento','The Dark Knight','Inception','Interstellar','Oppenheimer','The Prestige');