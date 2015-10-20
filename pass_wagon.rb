require_relative 'manufacturer'
class PassengerWagon
  include Manufacturer
  def initialize
    @all_seats = 36
    @occupied_seats = 0
    
  end

  def take_seat
    @all_seats -= 1 if @all_seats > 0
  end

  def off_seat
    @all_seats += 1 if @all_seats <= 35	
  end

  def free_seats
    @all_seats
  end

  def occupied_seats
    @occupied_seats = 36 - @all_seats
  end
end