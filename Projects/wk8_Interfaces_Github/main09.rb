# employee is the interface method that sends the same message to the other classes
class Employee

  def delegate(bike)
    bike.prepare
  end
end

class BmxBike

  def prepare
    puts 'Cleaning...'
  end

end

class RoadBike

  def prepare
    puts 'Lubricating gears...'
  end

end

class MountainBike

  def prepare
    puts 'Adjusting suspension...'
  end

end

class Tricycle

  def prepare
    puts 'Adjusting seat...'
  end

end



bikes = [BmxBike.new, RoadBike.new, MountainBike.new, Tricycle.new]

employee = Employee.new

bikes.each do |bike|
  employee.delegate(bike)
end

