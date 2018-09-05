require "minitest/autorun"
require "minitest/emoji"
require "./lib/boat"

class BoatTest < MiniTest::Test

  def test_it_exist
    boat = Boat.new(:kayak, 20)

    assert_instance_of Boat, boat
  end

  def test_it_has_attributes
    boat = Boat.new(:kayak, 20)

    assert_equal :kayak, boat.type
    assert_equal 20, boat.price_per_hour
  end

  def test_it_shows_total_hours_rented
    boat = Boat.new(:kayak, 20)

    assert_equal 0, boat.hours_rented
  end

  def test_it_can_add_hours_to_total_rented_time
    boat = Boat.new(:kayak, 20)

    boat.add_hour
    boat.add_hour

    assert_equal 2 , boat.hours_rented

    boat.add_hour

    assert_equal 3, boat.hours_rented
  end
end
