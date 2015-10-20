require_relative 'manufacturer'
class CargoWagon < Train
  include Manufacturer
   @@max_load = 6800

  def initialize
    @empty_part = @@max_load
    @loaded_part = 0
  end

  def loading(value)
    return nil if @empty_part - value < 0
    @empty_part -= value
  end

  def detrain(value)
    return nil if @empty_part + value > @@max_load
    @empty_part += value
  end

  def loaded_part
    @loaded_part = @@max_load - @empty_part
  end

  def empty_part
    @empty_part
  end 
end