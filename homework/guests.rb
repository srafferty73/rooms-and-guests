class Guests

  attr_accessor :guest_name, :money

  def initialize(guest_name, money)
    @guest_name = guest_name
    @money = money
  end

  def guest_name
    return @guest_name
  end

  def guest_money
    return @guest_money
  end

  def afford_fee_check(guest)
    p "Karaoke admission is £50..."
    if @money > 50
      p "Admission granted"
      return true
    else
      p "Admission denied"
      return false
    end
  end

end
