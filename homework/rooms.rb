class Rooms

  attr_accessor :room_name, :no_of_guests

  def initialize(room_name, no_of_guests)
    @room_name = room_name
    @no_of_guests = no_of_guests
  end

  def room_name
    return @room_name
  end

  def no_of_guests
    return @no_of_guests
  end

  def guest_check
    return @no_of_guests
  end
  
end
