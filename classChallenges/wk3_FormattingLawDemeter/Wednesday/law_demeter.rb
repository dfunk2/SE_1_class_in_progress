class Cooking
  attr_reader :ingredient1, :ingredient2
  def initialize(ingredient1, ingredient2)
    @ingredient1 = ingredient1
    @ingredient2 = ingredient2
    puts "ingredients are: #@ingredient1, #@ingredient2"
  end

end

class Meal
  attr_reader :entree
  def initialize(entree)
    @entree = entree
  end
end

def chef(ingredients, meal)
  if ingredients.ingredient1 == "noodles" && ingredients.ingredient2 == "meat balls"
    puts "With #{ingredients.ingredient1} and #{ingredients.ingredient2} I will make #{meal.entree}"
  end
end

ingredients = Cooking.new("noodles", "meat balls")
entree = Meal.new("spaghetti")

chef(ingredients, entree)


