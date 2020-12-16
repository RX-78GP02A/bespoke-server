require('dotenv').config();
const express = require('express');
const morgan = require('morgan');
const cors = require('cors');
const helmet = require('helmet');
const { NODE_ENV } = require('./config');
const errorHandler = require('./middleware/error-handler');
const postRecipeRouter = require('./postrecipe/postrecipe-router');
const recipesRouter = require('./recipes/recipes-router');
const app = express();

const allowedOrigins = ['http://localhost:3000', 'https://bespoke-cilent.vercel.app/'];
const morganOption = (NODE_ENV === 'production')
  ? 'tiny'
  : 'common';

app.use(morgan(morganOption));
app.use(helmet());
app.use(cors());

//testing endpoint
app.get('/', (req, res) => {
  res.send('Welcome to Bespoke Server')
});
// path '/postrecipe' , route handler function postRecipeRouter
app.use('/postrecipe', postRecipeRouter);
// path '/recipes' , route handler function recipesRouter
app.use('/recipes', recipesRouter);

//error handler middleware
app.use(errorHandler);

module.exports = app;