class Animal

  attr_accessor :name,:age,:sex,:hungry

  def initialize(name,age,sex)
    @name = name
    @age = age
    @sex = sex
    @hungry = true
  end
  def feed
    @hungry = false
  end

  def starve
    @hungry = true
  end

  
end

class WildCat < Animal
  
  def feed
    @hungry = false
    return "Be careful!!"
  end
end

class Lion < WildCat
  attr_accessor :species

  def initialize(name,age,sex,species = "Panthera leo")
    super(name,age,sex)
    @species = species
  end

end


class Tiger < WildCat
  attr_accessor :species

  def initialize(name,age,sex,species = "Panthera tigris")
    super(name,age,sex)
    @species = species
  end

end




class Monkey < Animal
end


class Zoo
  attr_accessor :animals
  def initialize(*animals)
    @animals = animals
  end

  def feed_all
    @animals.each do |animal|
      animal.feed
    end
  end
  
  def inspect_all_animals
    @animals.each do |a|
      puts "is #{a.name} hungry? #{a.hungry}"
    end
  end

end 

ape = Monkey.new("Chichi", 1, "female")
gorilla = Monkey.new("Billie", 3, "male")
lion = Lion.new("King", 2, "male")
tiger = Tiger.new("Stripey", 3, "female")

# ape.feed
# puts ape.is_hungry?
# ape.starve
# puts ape.is_hungry?
# puts ape.name



# puts lion.feed
# puts lion.is_hungry?
# puts lion.name

# zoo_wawa = Zoo.new(lion,tiger,ape,gorilla)
# zoo = zoo_wawa.animals




# zoo_wawa.feed_all
# zoo_wawa.inspect_all_animals
puts lion.species
