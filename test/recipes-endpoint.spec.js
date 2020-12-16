const recipes = require('../src/recipes/recipes-router')
const supertest = require('supertest')

describe('Recipes Endpoint', () => {
    const testRecipes = [
        {
            drink_name: 'Lorem',
            main_liquor: 'Absinthe',
            ingredients: 'Lorem Ipsum Lorem Ipsum',
            instructions: 'Lorem Ipsum Lorem Ipsum'
        },
        {
            drink_name: 'Ipsum',
            main_liquor: 'Gin',
            ingredients: 'Lorem Ipsum Lorem Ipsum',
            instructions: 'Lorem Ipsum Lorem Ipsum',
        },
        {
            drink_name: 'IpsumLorem',
            main_liquor: 'Rum',
            ingredients: 'Lorem Ipsum Lorem Ipsum',
            instructions: 'Lorem Ipsum Lorem Ipsum',
        },
        {
            drink_name: 'LoremIpsum',
            main_liquor: 'Vodka',
            ingredients: 'Lorem Ipsum Lorem Ipsum',
            instructions: 'Lorem Ipsum Lorem Ipsum',
        },
        {
            drink_name: 'IpsumLoremIpsum',
            main_liquor: 'Scotch',
            ingredients: 'Lorem Ipsum Lorem Ipsum',
            instructions: 'Lorem Ipsum Lorem Ipsum',
        },
        {
            drink_name: 'LoremIpsum',
            main_liquor: 'Bourbon',
            ingredients: 'Lorem Ipsum Lorem Ipsum',
            instructions: 'Lorem Ipsum Lorem Ipsum',
        },
        {
            drink_name: 'IpsumLoremIpsum',
            main_liquor: 'Rye',
            ingredients: 'Lorem Ipsum Lorem Ipsum',
            instructions: 'Lorem Ipsum Lorem Ipsum',
        },
        {
            drink_name: 'LoremIpsum',
            main_liquor: 'Brandy',
            ingredients: 'Lorem Ipsum Lorem Ipsum',
            instructions: 'Lorem Ipsum Lorem Ipsum',
        },
        {
            drink_name: 'IpsumLoremIpsum',
            main_liquor: 'Tequila',
            ingredients: 'Lorem Ipsum Lorem Ipsum',
            instructions: 'Lorem Ipsum Lorem Ipsum',
        },
        {
            drink_name: 'IpsumLoremIpsum',
            main_liquor: 'Mezcal',
            ingredients: 'Lorem Ipsum Lorem Ipsum',
            instructions: 'Lorem Ipsum Lorem Ipsum',
        }
    ];

    describe('GET recipes', () => {
        context('Given there are recipes in the database', () => {
            it('responds with 200 and the specified recipe by main_liquor', (done) => {
                const main_liquor = 'Vodka';
                const expectedRecipe = testRecipes['Vodka']
                    return supertest(recipes)
                        .get(`/recipes?main_liquor=${main_liquor}`)
                        .expect(200, expectedRecipe, done())
            });
            it('responds with a 400 when the req.query is not valid', (done) => {
                const invalid_main_liquor = null;
                return supertest(recipes)
                    .get('/recipes')
                    .send(invalid_main_liquor)
                    .expect(400, done())
            });
        });
    })

})