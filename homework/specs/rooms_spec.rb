require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../guests')

class TestRooms < MiniTest::Test

  def setup
    @room1 = Rooms.new("Penthouse", 0, 2)
    @room2 = Rooms.new("Standard", 0, 1)
    @room3 = Rooms.new("Advanced", 1, 0)
    @guest1 = Guests.new("Jimmy", @room1)
  end

  def test_room_name
    assert_equal("Penthouse", @room1.room_name)
  end

  def test_no_of_guests
    assert_equal(0, @room1.no_of_guests)
  end

  def test_no_of_songs
    assert_equal(2, @room1.no_of_songs)
  end

  def test_guest_name
    assert_equal("Jimmy", @guest1.guest_name)
  end

  def test_guest_check__in
    @room1.no_of_guests += 1
    assert_equal(1, @room1.no_of_guests)
  end

  def test_guest_check__out
    @room1.no_of_guests = 0
    assert_equal(0, @room1.no_of_guests)
  end

  def test_add_song
    @room1.no_of_songs += 1
    assert_equal(3, @room1.no_of_songs)
  end
end
