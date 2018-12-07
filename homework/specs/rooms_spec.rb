require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')

class TestRooms < MiniTest::Test

  def setup
    @room1 = Rooms.new("Penthouse")
    @room2 = Rooms.new("Standard")
    @room3 = Rooms.new("Advanced")
  end

  def test_room_name
    assert_equal("Penthouse", @room1.room_name)
  end

end
