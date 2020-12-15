# BESPOKE-SERVER
This is the backend server for Bespoke client: frontend @ https://github.com/RX-78GP02A/bespoke-cilent

Live demo of app hosted on vercel: 

Live version of server hosted on heroku https://stark-river-56520.herokuapp.com/

Core Technologies

> Node.js
> PostgresSQL
> express.js
> React
> JWT
> XSS
> Hooks


Services

> /users: GET, POST, PATCH
> /tasks: GET, POST, DELETE
> /rewards: GET, POST, DELETE
> Local/Development Set-up

> Requirements: Node.js, npm, postgresql

1. Clone this repo
2. Set up database table as habitually: $ createdb [connection-option...][option...] backburner
3. Install node_modules and migrate:
* .../bespoke-server $ npm install .../bespoke-server $ npm run migrate
4. Seed database with sample data
* .../bespoke-server $ psql -d recipes -f ./seeds/seed.recipes_tables.sql
