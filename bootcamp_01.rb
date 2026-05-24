class Animal
  def initialize(name, color)
    @name = name
    @color = color
  end
  def info
    {
      name: @name,
      color: @color,
    }
  end
  def cry
    "#{@name} is crying very hard. auch"
  end
end

class Hamster < Animal
  def info
    animal_info = super
    animal_info[:type] = "Hamster"
    animal_info
  end
end

class Dog < Animal
  def info
    animal_info = super
    animal_info[:type] = "Dog"
    animal_info
  end
end

hamster = Hamster.new("Chiikawa", "White")
puts hamster.info
puts hamster.cry

dog = Dog.new("Leika", "Gold")
puts dog.info
puts dog.cry
