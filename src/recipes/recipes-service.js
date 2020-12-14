const RecipesService = {
    getByMainLiquor(knex, main_liquor) {
        return knex
            .select('*')
            .from('recipes')
            .where('main_liquor', main_liquor)
    }
}

module.exports = RecipesService