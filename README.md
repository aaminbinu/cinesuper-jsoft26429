# 🎬 CineSuper — Mini OTT Movie Database

**Live Demo:** https://aaminbinu.github.io/cinesuper-jsoft26429/

**Student:** Aamin Binu | **JSOFT26429:** REG NO
**Institution:** Jain School of Future Technology
**Course:** Database Management Systems | **Faculty:** Sathish Kumar M

## Tech Stack
- Supabase (PostgreSQL) – database
- HTML, CSS, JavaScript – frontend
- GitHub Pages – hosting

## Database
- genres (id, name)
- movies (id, title, release_year, language, duration_min, description, poster_url, genre_id → genres)
- reviews (id, movie_id → movies, reviewer_name, rating 1–5, comment, created_at)
- View: movie_ratings (average rating per movie)
- SQL scripts: see the `database/` folder

## Features
- Browse, search and filter movies
- Movie details with reviews
- Add a review (saved to the database)
- Row Level Security enabled

## My Personalisation
- New movies added: Kumbalangi Nights, Ratsasan, Tumbbad, The Prestige, 3 Idiots (new genre: Horror)
- New column: director
- Extra feature: language filter dropdown
- Theme colour changed to purple