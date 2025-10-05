class Cats
    #constructor method
    def initialize(name, color, favoriteToy)
        @name = name
        @color = color
        @favoriteToy = favoriteToy
    end

    def cat_properties()
        puts "My name is #{@name}, I am a #{@color} colored cat, and my favorite toy is a #{@favoriteToy}"
    end
end

#subclass 
class Speak < Cats
    def initialize(name)
        @name = name
        puts "#{@name} says meow"
    end
end
#created cat objects and passing parameters to initialize the instance variables, automatically called when new is used
cat1 = Cats.new(:Chip, :brown_tabby, :plastic_bag)
cat1.cat_properties
catSpeak1 = Speak.new(:Chip)
catSpeak1.cat_properties

cat2 = Cats.new(:Myko, :gray_tabby, :ball)
cat2.cat_properties
catSpeak2 = Speak.new(:Myko)
catSpeak2.cat_properties