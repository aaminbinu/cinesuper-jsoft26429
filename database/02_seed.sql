-- SCRIPT 2: SAMPLE DATA

insert into genres (name) values
  ('Action'), ('Drama'), ('Comedy'), ('Sci-Fi'), ('Thriller'), ('Animation');

insert into movies (title, release_year, language, duration_min, description, poster_url, genre_id) values
  ('Baahubali 2: The Conclusion', 2017, 'Telugu', 167,
   'A warrior learns the truth about his father and the kingdom of Mahishmati.',
   'https://placehold.co/300x450/7f1d1d/ffffff?text=Baahubali+2',
   (select id from genres where name = 'Action')),
  ('Vikram', 2022, 'Tamil', 174,
   'A special agent investigates masked murders linked to a drug cartel.',
   'https://placehold.co/300x450/111827/ffffff?text=Vikram',
   (select id from genres where name = 'Action')),
  ('Jai Bhim', 2021, 'Tamil', 164,
   'A lawyer fights for justice for a tribal woman whose husband goes missing in custody.',
   'https://placehold.co/300x450/1e3a8a/ffffff?text=Jai+Bhim',
   (select id from genres where name = 'Drama')),
  ('96', 2018, 'Tamil', 158,
   'Two school sweethearts meet again at a reunion, twenty-two years later.',
   'https://placehold.co/300x450/831843/ffffff?text=96',
   (select id from genres where name = 'Drama')),
  ('3 Idiots', 2009, 'Hindi', 171,
   'Two friends search for the college buddy who taught them to chase excellence.',
   'https://placehold.co/300x450/065f46/ffffff?text=3+Idiots',
   (select id from genres where name = 'Comedy')),
  ('Interstellar', 2014, 'English', 169,
   'Astronauts travel through a wormhole to find a new home for humanity.',
   'https://placehold.co/300x450/0c4a6e/ffffff?text=Interstellar',
   (select id from genres where name = 'Sci-Fi')),
  ('Inception', 2010, 'English', 148,
   'A thief who steals secrets through dreams is asked to plant an idea instead.',
   'https://placehold.co/300x450/374151/ffffff?text=Inception',
   (select id from genres where name = 'Sci-Fi')),
  ('Drishyam', 2013, 'Malayalam', 160,
   'A family man goes to any length to protect his family after an accidental crime.',
   'https://placehold.co/300x450/422006/ffffff?text=Drishyam',
   (select id from genres where name = 'Thriller')),
  ('Kantara', 2022, 'Kannada', 148,
   'A village conflict between tradition and authority, rooted in local folklore.',
   'https://placehold.co/300x450/7c2d12/ffffff?text=Kantara',
   (select id from genres where name = 'Thriller')),
  ('Toy Story', 1995, 'English', 81,
   'A cowboy doll feels threatened when a new space-ranger toy arrives.',
   'https://placehold.co/300x450/1d4ed8/ffffff?text=Toy+Story',
   (select id from genres where name = 'Animation'));

insert into reviews (movie_id, reviewer_name, rating, comment) values
  ((select id from movies where title = 'Vikram'),       'Arun',    5, 'Mass climax!'),
  ((select id from movies where title = 'Vikram'),       'Divya',   4, 'Great background score.'),
  ((select id from movies where title = '96'),           'Karthik', 5, 'Pure emotion.'),
  ((select id from movies where title = 'Interstellar'), 'Priya',   5, 'Mind-blowing science.'),
  ((select id from movies where title = '3 Idiots'),     'Rahul',   4, 'Funny and meaningful.'),
  ((select id from movies where title = 'Drishyam'),     'Meena',   5, 'Best thriller ever.');
