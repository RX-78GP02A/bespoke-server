# BESPOKE-SERVER
This is the backend server for Bespoke client: frontend @ https://github.com/RX-78GP02A/bespoke-client

Live demo of app hosted on vercel: https://bespoke-cilent.vercel.app/
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

> /Recipes: GET
> /POST: POST


> Local/Development Set-up

<img width="1186" alt="Screen Shot 2020-12-15 at 3 19 20 PM" src="https://user-images.githubusercontent.com/67432727/102273991-2db7e900-3ef1-11eb-8a58-151806abddf8.png">> 

Requirements: Node.js, npm, postgresql

1. Clone this repo
2. Set up database table as recipes: $ createdb [connection-option...][option...] backburner
3. Install node_modules and migrate:
* .../bespoke-server $ npm install .../bespoke-server $ npm run migrate
4. Seed database with sample data
* .../bespoke-server $ psql -d recipes -f ./seeds/seed.recipes_tables.sql
