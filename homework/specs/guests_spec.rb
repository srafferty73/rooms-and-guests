require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')
require_relative('../rooms')

class TestGuests < MiniTest::Test

  def setup
    @guest1 = Guests.new("Stephen", "Room 1")
    @guest2 = Guests.new("Bob", "Room 2")
    @guest3 = Guests.new("Fred", "Room 3")
    @room1 = Rooms.new("Top Deck",0)
  end

  def test_guest_name
    assert_equal("Stephen", @guest1.guest_name)
  end

  def test_room_name
    assert_equal("Top Deck", @room1.room_name)
  end

end
