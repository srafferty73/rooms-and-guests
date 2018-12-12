require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms')
require_relative('../guests')
require_relative('../songs')

class TestRooms < MiniTest::Test

  def setup
    @song1 = Songs.new("Wind Beneath My Wings")
    @song2 = Songs.new("Love Me Do")
    @song3 = Songs.new("Wonderwall")

    @guest1 = Guests.new("Alfred", 100)
    @guest2 = Guests.new("Brian", 50)
    @guest3 = Guests.new("Colin", 75)
    @guest4 = Guests.new("Derek", 90)
    @guest5 = Guests.new("Edward", 45)
    @guest6 = Guests.new("Freddy", 150)
    @guest7 = Guests.new("George", 105)
    guests_grp_one = [@guest1, @guest2]
    guests_grp_two = [@guest3, @guest4]

    @room1 = Rooms.new("Standard", guests_grp_one, ["Wonderwall"])
    @room2 = Rooms.new("Advanced", guests_grp_two, [])
    @room3 = Rooms.new("Penthouse", [], [])
  end

  def test_room_name
    assert_equal("Standard", @room1.room_name)
  end

  def test_room_guests
    assert_equal([@guest3, @guest4], @room2.room_guests)
  end

  def test_room_songs
    assert_equal(["Wonderwall"], @room1.room_songs)
  end

  def test_add_guest__space
    @room3.add_guest(@guest5)
    assert_equal(1, @room3.calculate_guests)
  end

  def test_add_guest__no_space
    @room3.add_guest(@guest5)
    @room3.add_guest(@guest6)
    @room3.add_guest(@guest7)
    assert_equal("Room already full", @room3.calculate_guests)
  end

  def test_remove_guest
    @room1.remove_guest(@guest1)
    assert_equal(1, @room1.calculate_guests)
  end

  def test_calculate_guests
    assert_equal(2, @room1.calculate_guests)
  end

  def test_add_song
    @room2.add_song(@song2)
    assert_equal(1, @room2.calculate_songs)
  end




end
