class Boat
  attr_reader :type,
              :price_per_hour,
              :hours_rented
  def initialize(type, price_per_hr)
    @type = type
    @price_per_hour = price_per_hr
    @hours_rented = 0
  end

  def add_hour
    @hours_rented += 1
  end 
end
