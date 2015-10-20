
def menu
      puts "  _______________"
      puts "  МЕНЮ УПРАВЛЕНИЯ:"
      puts "  1. Прибытие поезда на следующую станцию маршрута"
      puts "  2. Возврат на предыдущую станцию маршрута"
      puts "  3. Ускорение на 10 км/ч"
      puts "  4. Замедление на 10 км/ч"
      puts "  __________________"
      puts "  ПАССАЖИРСКИЙ ПОЕЗД:"
      puts "  5. Посадка в пассажирские вагононы"
      puts "  6. Высадка из пассажирских вагонов"
      puts "  7. Прицепить пассажирские вагоны"
      puts "  ______________"
      puts "  ТОВАРНЫЙ ПОЕЗД:"
      puts "  8.Загрузка товарных вагонов"
      puts "  9.Разгрузка товарных вагонов"
      puts "  10.Прицепить товарные вагоны"
      puts "                              "
      puts "  11.Расцепить вагоны "
      puts "  12.Показать состав "
      puts "  13.Информация о производителе"
end

def add_train_number
    attempt = 1
begin
    puts "Введите произвольный номер поезда в формате XXX-XX:"
    number = gets.strip
  raise ArgumentError if number !~ /\A[\D|\d]{3}\-[\D|\d]{2}\z/
  rescue ArgumentError
    attempt += 1
    puts "Попробуйте ещё раз (попытка: #{attempt}) :"
  retry 
end
end

def with_retry
 attempts = 2
  begin
    yield 
   rescue ArgumentError, "Неверный ввод"
    puts "Попробуйте ещё раз (попытка №#{attempts}) :"
    puts "Введите два или более символов" if attempts > 2
    puts "Не балуйся!" if attempts > 4
    attempts += 1
   retry 
  end
end