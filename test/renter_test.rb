require "minitest/autorun"
require "minitest/emoji"
require "./lib/boat"
require "./lib/renter"
require "./lib/dock"

class RenterTest < MiniTest::Test
  def test_it_exist
    renter = Renter.new("Patrick Star", "4242424242424242")

    assert_instance_of Renter, renter
  end

  def test_it_has_attributes
    renter = Renter.new("Patrick Star", "4242424242424242")

    assert_equal "Patrick Star", renter.name
    assert_equal "4242424242424242", renter.credit_card_number
  end 

end
