require "./route.rb"
require "./passanger_car.rb"
require "./cargo_car.rb"
require "./company_name.rb"
require "./instance_counter.rb"

class Train
  include CompanyName
  extend InstanceCounter
  attr_writer :route
  TRAIN_TYPE = nil
  ABC = /[a-zA-Z]{3,10}/
  NUMBER = /([a-zA-Z]|\d){3}(-([a-zA-Z]|\d){2})?/

    @@id = 0
    @@all_trains = []

  def self.find(id)
    @@all_trains.collect { |n| n.id == id }
  end

  def self.all_trains
    @@all_trains.map { |x| x.id}
  end

  def initialize(name, number)
    @type_of_train =  TRAIN_TYPE
    @cars = []
    @number = number
    @name = name
    @@all_trains.push self
    @route = nil
    @id = @@id + 1
    @@id += 1
    @i = 0
    self.class.register_instance
    validate!
  end

  def validate!
    begin
      raise "Формат номеру не підходить" if @number !~ NUMBER
      raise "Назва не може бути nil" if @name.nil?
      raise "Назва поїзду не підходить" if @name !~ ABC
    rescue Exception => e
      puts "Exception: #{e.message}"
    end
  end

  def validate_car_type
    begin
      raise "Тип вагону не підходить"
    rescue Exception => e
      puts "Exception: #{e.message}"
    end
  end

  def id
    @id
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