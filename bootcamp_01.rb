class Animal
  class UndefindAnimalError < StandardError
  end
  
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
        raise UndefindAnimalError, "You put undefined animal. It can't cry."
    end
end

class Hamster < Animal
  def info
    animal_info = super
    animal_info[:type] = "Hamster"
    animal_info
  end
  def cry
    "와앙"
  end
end

class Dog < Animal
  def info
    animal_info = super
    animal_info[:type] = "Dog"
    animal_info
  end
  def cry
    "멍멍"
  end
end

hamster = Hamster.new("Chiikawa", "White")
puts hamster.info
puts "#{hamster.info[:type]} cry like #{hamster.cry}" 

dog = Dog.new("Leika", "Gold")
puts dog.info
puts "#{dog.info[:type]} cry like #{dog.cry}" 

animal = Animal.new("Cat", "Blue")
puts animal.info
puts "#{animal.info[:type]} cry like #{animal.cry}" 
