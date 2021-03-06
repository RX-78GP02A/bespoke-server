BEGIN;

TRUNCATE
  recipes_users,
  recipes
  RESTART IDENTITY CASCADE;



INSERT INTO recipes (drink_name, main_liquor, ingredients, instructions)
VALUES  
    ('DEATH IN THE AFTERNOON', 'Absinthe', '(.75oz) Lucid, (.25oz) lemon, .25oz sugar', 'Short shake and strain into Champagne Flute and top with Champagne, Garnish: channel lemon peel.'),
    ('ABSINTHE SUISSESSE', 'Absinthe', '(1.25oz) Vilya, (.75oz) orgeat, (.75oz) cream, 1 egg white', 'Reverse dry shake and strain Brandy snifter and add crushed ice, Garnish: grated nutmeg.'),
    ('ABSINTHE FRAPPE', 'Absinthe', '(1.25oz) Vilya or Lucid, (.5oz) simple, 6 mint leaves', 'add crushed ice and short shake and open pour into beveled glass: top with club soda, Garnish: Mint sprig.'),
    ('NEGRONI','Gin', '(1oz) Beefeater Dry Gin, (1oz) Dolin Rouge, (1oz) Campari', 'Stir and strain into a Big ROCKS Glass, Garnish: orange twist.'),
    ('BEES KNEES', 'Gin', '2oz Hayman’s Old Tom Gin, (.75oz) lemon, (.75oz) honey, 2 dashes Lavender Bitters', 'Shake and strain into a Coupe glass, No Garnish.'),
    ('SLOE GIN FIZZ', 'Gin', '(1oz) Gordon’s Gin, (1oz) Sloe Gin, (.75oz) lemon, (.75oz) simple', 'Shake and strain into a fizz glass, No garnish.'),
    ('MAI TAI', 'Rum', '(2oz) Denizen Rsv, (.5oz) Dry Curacao, (1oz) lime, (.5oz) Orgeat', 'Short shake and open pour into Etched Rocks glass, Garnish: mint & orchid'),
    ('EL PRESIDENTE', 'Rum', '(1.5oz) Flor de Cana Dry, (1.5oz) Dolin Blanc, (.25oz) dry curacao, (1) tsp grenadine, 2 dashes orange bitters', 'Stir and strain into a Coupe glass, Garnish: orange twist'), 
    ('OLD CUBAN', 'Rum', '(2oz) Flor de Cana 7 yr, (1oz) lime, (.5oz) vanilla syrup, 2 dash angostura bitters', 'Muddle mint with syrup, add ingredients and shake: Strain into a Cocktail glass and top with Champagne : Garnish: mint leaf'),
    ('CHI CHI', 'Vodka', '(2oz) Wodka, (3oz) pineapple, (1oz) coconut cream', 'Short shake with crushed ice and open pour into a Pilsner glass, Garnish: cherry picked through a lime wedge, Peychaud’s bitters on top'),
    ('GRAPEFRUIT JULEP', 'Vodka', '(1.5oz) Titos, (.75oz) ruby red grapefruit, (.5oz) lime, (.25oz) grenadine, (.25oz) honey', 'Muddle mint with syrup, add ingredients and shake with crushed ice, Open pour into etched glass, Garnish: mint sprig, grapefruit wedge and powdered sugar'),
    ('HARVEY WALLBANGER', 'Vodka', '(1.5oz) Wodka, (1.5oz) OJ, (.25oz) lemon, (.25oz) simple', 'Shake and strain over ice into a Rocks glass and top with .5oz Galliano Autentico, Garnish: orange wedge'), 
    ('PENICILLIN', 'Scotch', '(2oz) Banknote Blended Scotch, (.75oz) lemon, (.5oz) honey, (.25oz) ginger', 'add ingredients and  Shake : Fine strain over ice into a Rocks glass, Garnish: peat monster float and candied ginger'),
    ('CAMERONS KICK', 'Scotch', '(1oz) Banknote Blended Scotch, (1oz) Jameson, (.75oz) lemon, (.75oz) orgeat, 2 dash angostura bitters', 'Shake and strain into a Coupe glass : Garnish: lemon wheel & cherry'),
    ('RUSTY NAIL', 'Scotch', '(2oz) Famous Grouse Black Blend, (.5oz) Drambuie', 'Build in a Rocks glass and stir until chilled, Garnish: orange twist'), 
    ('OLD FASHIONED', 'Bourbon', '(2oz) Evan Bonded Bourbon, (.25oz) demerara, 3 dashes Angostura bitters, 3 dashes Orange bitters', 'Build in a Rocks glass and stir until chilled, Garnish: orange twist with a cherry'), 
    ('GOLD RUSH', 'Bourbon','(2oz) Larceny Bourbon', '(.75oz) lemon', '(.75oz) honey', 'Shake and strain over ice into a Rocks glass, No garnish'),
    ('NY SOUR', 'Bourbon', '(1.5oz) Evan Williams 1783, (.75)oz lemon, (.75oz) simple', 'Shake and strain over ice into a Rocks glass, Garnish: float of Tilia Malbec'), 
    ('WALDORF', 'Rye', '(2oz) Evan Bonded, (1oz) Cochi de Torino, 1 tsp  Absinthe, 1 dash angostura bitters', 'Stir and strain into a Martini glass, Garnish: cherry'), 
    ('SCOFFLAW', 'Rye', '(2oz) Overholt Rye Whiskey, (1oz) Dry Vermouth, (.75oz) lime, (.75oz) Grenadine, 2 dashes Orange Bitters', 'Shake and strain into a Coupe glass, No garnish'), 
    ('MANHATTAN', 'Rye', '(1.5oz) Rittenhouse Rye, (1.5oz) Cocchi di Torino, 2 dashes Angostura bitters', 'Stir and strain into a Nick & Nora glass, Garnish: cherry'), 
    ('VIEUX CARRE', 'Brandy', '(.75oz) Bache Am. Oak, (.75oz) Old Overholdt Rye, (.75oz) Cocchi Torino, (.25oz) Benedictine, 2 dashes Peychaud’s, 2 dashes Angostura bitters', 'Stir and strain over ice into a Brandy snifter, Garnish: lemon twist'),
    ('MIDNIGHT STINGER', 'Brandy', '(2oz) Brandy St. Louise, (.5oz) crème de menthe, 2 dashes Herbstura', 'Stir and strain into an absinthe rinsed Coupe glass, Garnish: mint leaf'), 
    ('PRESCRIPTION JULEP', 'Brandy', '(1.5oz) Brandy ST. Louise, (.5oz) demerara syrup', 'muddle mint and syrup then add Cognac, Add crushed ice to Julep mug, Top with ().5oz) Rittenhouse, Garnish: mint sprig'), 
    ('MEX. FIRING SQUAD', 'Tequila','(2oz) Blanco Tequila, (.75oz) lime, (.75oz) grenadine, 5 dashes Angostura bitters', 'Shake and strain over ice into a Rocks glass, Garnish: lime wheel and cherry'),
    ('JUSCHU', 'Tequlia', '(2oz) Blanco Tequila, (.75oz) lime, (.75oz) honey, 2 dashes Angostura bitters', 'Shake and strain into a Coupe glass, No garnish'),
    ('MARGARITA', 'Tequila', '(2oz) Tequila or Mezcal, (1oz) lime, (.5oz) agave, 3 dashes saline solution', 'Shake and strain over ice into a Rocks glass, Garnish: Lime wheel'), 
    ('MEZCAL OLD FASHIONED', 'Mezcal', '2oz Nuestra Soledad, (.25oz) agave, 3 dashes lemon bitters, 3 dashes orange bitters', 'Build in a Rocks glass and stir until chilled', 'Garnish: lemon twist'),
    ('MEZCAL NEGRONI', 'Mezcal', '(1oz) Fidencio Mezcal, (1oz) Ramazzotti, (1oz) Punt e Mes', 'Stir and strain over ice into a Big Rocks glass, Garnish: orange twist'),
    ('MEDICINA LATINA', 'Mezcal', '1.5oz Nuestra Soledad, (.75oz) lime, (.5oz) honey, (.25oz) ginger syrup', 'muddled ginger and pinch of Tajin : add remaining ingredients, Shake and strain over ice into a Rocks glass, Float .5oz Fidencio Mezcal : Garnish: candied ginger');