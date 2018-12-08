class Rooms

  attr_accessor :room_name, :no_of_guests, :no_of_songs

  def initialize(room_name, no_of_guests, no_of_songs)
    @room_name = room_name
    @no_of_guests = no_of_guests
    @no_of_songs = no_of_songs
  end

  def room_name
    return @room_name
  end

  def no_of_guests
    return @no_of_guests
  end

  def no_of_songs
    return @no_of_songs
  end

  def guest_check
    return @no_of_guests
  end

end
