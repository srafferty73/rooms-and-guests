require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')
require_relative('../rooms')

class TestGuests < MiniTest::Test

  def setup
    @guest1 = Guests.new("Stephen", 56)
    @guest2 = Guests.new("Bob", 45)
    @guest3 = Guests.new("Fred", 99)
  end

  def test_guest_name
    assert_equal("Stephen", @guest1.guest_name)
  end

  def test_entry_fee
    @guest1.afford_fee_check(@guest1)
    assert_equal(true, @guest1.afford_fee_check)
  end

end
