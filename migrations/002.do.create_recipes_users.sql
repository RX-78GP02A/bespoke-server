CREATE TABLE recipes_users (
  id SERIAL PRIMARY KEY,
  username TEXT NOT NULL UNIQUE,
  first_name TEXT NOT NULL,
  password TEXT NOT NULL,
);
ALTER TABLE recipes
  ADD COLUMN
    user_id INTEGER REFERENCES recipes_users(id)
    ON DELETE CASCADE NULL;