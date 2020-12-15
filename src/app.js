require('dotenv').config()
const express = require('express')
const morgan = require('morgan')
const cors = require('cors')
const helmet = require('helmet')
const { NODE_ENV } = require('./config')
const errorHandler = require('./middleware/error-handler')
const postRecipeRouter = require('./postrecipe/postrecipe-router')
const recipesRouter = require('./recipes/recipes-router')
const app = express()

const morganOption = (NODE_ENV === 'production')
  ? 'tiny'
  : 'common';

app.use(morgan(morganOption))
app.use(helmet()),

app.use(cors({
  origin: function(origin, callback) {
    if(!origin) return callback(null, true);
    if(allowedOrigins.indexOf(origin) === -1) {
        const msg = 'The CORS policy for this site does not' + 'allow access from the specified Origin'
        return callback(new Error(msg), false)
    }
    return callback(null, true)
}}))

//testing endpoint
app.get('/', (req, res) => {
  res.send('Hello, world!')
})
// path '/postrecipe' , route handler function postRecipeRouter
app.use('/postrecipe', postRecipeRouter)
// path '/recipes' , route handler function recipesRouter
app.use('/recipes', recipesRouter)

//error handler middleware
app.use(errorHandler)

module.exports = app