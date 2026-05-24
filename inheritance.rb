class Vehicle
  def initialize(brand, model)
    @brand = brand
    @model = model
  end

  def info
    {
      brand: @brand,
      model: @model,
    }
  end

  def number_of_wheels
    raise NotImplementedError, 'Vehicle can have many number of wheels'
  end

  def can_move?
    true
  end
end

class Car < Vehicle
  def number_of_wheels
    4
  end
  def info
    vehicle_info = super
    vehicle_info[:type] = "Car"
    vehicle_info
  end
end

vehicle = Car.new("Hyundai", "Grand i10")
puts vehicle.info
puts "vehicle has #{vehicle.number_of_wheels} wheels"
puts "vehicle can move? #{vehicle.can_move?}"