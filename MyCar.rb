module Towable
  def can_tow?(pounds)
    pounds <2000
  end
end



class Vehicle 
  attr_accessor :color
  attr_reader :year
  attr_reader :model

@@number_of_vehicles = 0

  def self.gas_mileage  (gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@number_of_vehicles += 1
  end
  
  def self.number_of_vehicles
    @@number_of_vehicles
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You break and slow down to #{number} mph."
  end

  def shut_car_off
    @current_speed = 0
    puts "youre in park"
  end

  def current_speed
    puts "You're going #{@current_speed} mph"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def age
    "your #{self.model} is #{years_old} years old"
  end

  private

  def years_old
    Time.now.year - self.year
  end
end

class MyTruck < Vehicle
  include Towable
   def to_s
    "My truck is a #{color}, #{year}, #{@model}!"
  end
  NUMBER_OF_DOORS = 4
end

class MyCar < Vehicle
  def to_s
    "My car is a #{color}, #{year}, #{@model}!"
  end
  NUMBER_OF_DOORS = 2
end



# lumina = MyCar.new(1997, 'chevy lumina', 'white')
# lumina.speed_up(20)
# lumina.current_speed
# lumina.speed_up(20)
# lumina.current_speed
# lumina.brake(20)
# lumina.current_speed
# lumina.brake(20)
# lumina.current_speed
# lumina.shut_car_off
# lumina.current_speed
# lumina.color = 'black'
# puts lumina.color
# puts lumina.year
# lumina.spray_paint('red')
# MyCar.gas_mileage(13, 351)
# my_car = MyCar.new("2010", "Ford Focus", "silver")
# puts my_car
# puts Vehicle.number_of_vehicles
puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors
