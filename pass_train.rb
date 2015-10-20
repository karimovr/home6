class PassengerTrain < Train
  attr_reader :wagons

  def initialize (number)
    @number = number  
    @wagons = [] 
    @speed = 0
    @train_route = nil
 end

  def hook_one(passengerwagon) 
    return nil if @speed > 0
    @wagons << passengerwagon
  end
  
  def unhook_one 
    return nil if @speed > 0
    @wagons.pop
  end

   def anything_train(&block)
    @wagons.each {|passengerwagon| block.call(passengerwagon)} 
  end
end