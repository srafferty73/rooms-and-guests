class Guests

  attr_accessor :guest_name, :room_name

  def initialize(guest_name, room_name)
    @guest_name = guest_name
    @room_name = room_name
  end

  def guest_name
    return @guest_name
  end

  def room_name
    return @room_name
  end
end
