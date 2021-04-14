load "./route.rb"

class Train
  attr_writer :route
  TRAIN_TYPE = nil

  def initialize
    @type_of_train =  TRAIN_TYPE
    @cars = []
    @route = nil
    @i = 0
  end

  def add_car(car_name)
    @cars.push car_name
  end

  def delete_car(car_name)
    @cars.delete car_name
  end

  def speed(speed)
    @speed = speed
  end

  def stop
    @speed = 0
  end

  def cars_count
    @cars.length
  end

  def move_thought_stations
    puts "Зараз ви на станції #{station_list[@i]}"
    command = gets.chomp
    if command == "next"
      @i += 1
    elsif command == "previous"
      if @i == 0
        puts "Ви на початковії станції"
      elsif @i >= 0
        @i -= 1
      end
    end
  end
end