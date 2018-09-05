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
    if @dock_renters[name] != nil
      @dock_renters[name] += [boat_type]
    else
      @dock_renters[name] = [boat_type]
    end 
  end

end
