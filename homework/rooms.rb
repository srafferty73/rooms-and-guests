class Rooms

  attr_accessor :room_name, :room_guests, :room_songs

  def initialize(room_name, room_guests, room_songs)
    @room_name = room_name
    @room_guests = room_guests
    @room_songs = room_songs
  end

  def room_name
    return @room_name
  end

  def room_guests
    return @room_guests
  end

  def room_songs
    return @room_songs
  end

  def add_guest(guest)
    @room_guests << guest
  end

  def remove_guest(guest)
    index = @room_guests.index(guest)
    @room_guests.slice!(index, 1)
  end

  def calculate_guests
    max_guests = 2
    if room_guests.count <= max_guests
      return room_guests.count()
    else
      return "Room already full"
    end
  end

  def add_song(song)
    @room_songs << song
  end

  def calculate_songs
    return room_songs.count()
  end



end
