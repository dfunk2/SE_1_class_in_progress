class Cooking
  attr_reader :ingredient1, :ingredient2, :entree1, :entree2
  def initialize(ingredient1, ingredient2, entree1, entree2)
    @ingredient1 = ingredient1
    @ingredient2 = ingredient2
    @entree1 = entree1
    @entree2 = entree2
    puts "ingredients are: #@ingredient1, #@ingredient2"
  end

  def chef(ingredients, entree1, entree2)
    if ingredients.ingredient1 == "noodles" && ingredients.ingredient2 == "meat balls" 
      puts "With #{ingredients.ingredient1} and #{ingredients.ingredient2} I can make #{@entree1.entree1} and #{@entree2.entree2}"
    end
  end
end

class Orders
  attr_reader :order
  def initialize(order)
    @order = order
  end
end

def customer
    puts "Can i place a #@order for #@entree1"
end 


ingredients = Cooking.new("noodles", "meat balls")
entree1 = Cooking.new("spaghetti")
entree2 = Cooking.new("meat ball and noodle soup")

chef(ingredients, entree1, entree2)
customer