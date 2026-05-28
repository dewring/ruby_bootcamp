require_relative 'food' 
require_relative 'recipe'  

food = Food.new 
food.set_name("Pizza")
food.set_ingredients(["dough", "tomato", "sauce", "cheese"])  

recipe = Recipe.new 
recipe.set_food(food) 

puts recipe.print