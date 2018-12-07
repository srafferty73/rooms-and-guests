require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')

class TestGuests < MiniTest::Test

  def setup
    @guest1 = Guests.new("Stephen")
    @guest2 = Guests.new("Bob")
    @guest3 = Guests.new("Fred")
  end

  def test_guest_name
    assert_equal("Stephen", @guest1.guest_name)
  end

end
