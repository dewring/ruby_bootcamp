class Recipe
  def set_food(food)
    @food = food
  end
  def print
    food_name = @food.name
    food_ingredients = @food.ingredients
    "🍽 Recipe Food: #{food_name} ingredients: #{food_ingredients}"
  end
end