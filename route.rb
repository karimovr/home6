class Route
  
  def initialize(start, finish)
    @route_list = []
    @route_list << start << finish  
  end
  
  def add_station(station)
    @route_list.insert(-2, station)
  end

  def del_station(station)
    @route_list.delete
  end

  def route_list
    @route_list
  end
end