class Station
  attr_reader :name, :list
    @@all_stations = []

  def self.all_stations
    @@all_stations
  end

  def initialize (name)
    @name = name 
    @list = [] 
    validate!
    @@all_stations << self
  end

  def anything_station(&block)
    @list.each{ |train| block.call(train) }
  end
  
  def add_list (train) 
    @list << train
  end

  def delete_list (train)
    @list.delete
  end

  def type_list 
     type_list = Hash.new(0)
    @list.map { |train| type_list[train.type] += 1 }
     type_list
  end

    def valid?
    validate!
    true
  rescue 
    false
  end

  # protected

  def validate!
    raise ArgumentError, "!!! Вы не ввели название станции !!!" if name.empty?
    raise ArgumentError, "!!! Название станции не может состоять из одной буквы !!!" if name.size < 2
  end
  
  def start
    attempt = 1
begin
  puts "Введите название станции:"
  name = gets.chomp
  station1 = Station.new(name)
  puts "Вы создали станцию #{station1.name}"
  puts "Список всех станций класса Station: #{Station.all_stations}"
rescue ArgumentError
  attempt += 1
  puts "Попробуйте ещё раз (попытка #{attempt}) :"
  puts "Введите два и более символов" if attempt == 3
  puts "Не балуйся!" if attempt > 3
retry 
end

attempt = 1
begin
  puts "Введите название станции:"
  name = gets.chomp
  station2 = Station.new(name)
  puts "Вы создали станцию #{station2.name}"
  puts "Список всех станций класса Station: #{Station.all_stations}"
rescue ArgumentError
  attempt += 1
  puts "Попробуйте ещё раз (попытка #{attempt}) :"
  puts "Введите два и более символов" if attempt == 3
  puts "Не балуйся!" if attempt > 3
retry 
end
end
end

