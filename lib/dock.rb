require 'pry'
require "./lib/boat"

class Dock
  attr_reader :name,
              :max_rental_time,
              :dock_renters
  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @dock_renters = Hash.new
  end

  def rent(boat_type, name)
    if @dock_renters[name.name] != nil
      @dock_renters[name.name] += [boat_type]
    else
      @dock_renters[name.name] = [boat_type]
    end
  end

  def log_hour
    boats = @dock_renters.values.flatten
    boats.map do |boat|
      boat.add_hour
    end
  end

  def total_hours_rented
    boats = @dock_renters.values.flatten
    boats.map do |boat|
      boat.hours_rented
    end.sum
  end

  def return(boat)
    boats = @dock_renters.values.flatten
    new_boats = boats.delete(boat)
    
  end
end
