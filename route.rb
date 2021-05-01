require './hash.rb'

class Route
  ROUTE_TRAIN_NAME_REGEXP = /[a-zA-Z]{3,10}/

  def initialize(starting_station, terminal_station)
    @starting_station = starting_station
    @terminal_station = terminal_station
    @all_stations = [starting_station, terminal_station]
    validate
  end

  def validate
      begin
      raise "Об'єкт першої станції не може бути nil" if @starting_station.nil?
      raise "Об'єкт щстаньої станції не може бути nil" if @terminal_station.nil?
    rescue Exception => e
      puts "Exception: #{e.message}"
    end
  end

  def validate_station
    begin
      raise "Об'єкт не є станцією"
    rescue Exception => e
      puts "Exception: #{e.message}"
    end
  end

  def add_station(station_name)
    if station_name.class == RailwayStation
      @all_stations.insert(-2, station_name)
    else
      validate_station
    end
  end

  def delete_station(station)
    @all_stations.delete(station)
  end

  def station_list
    "#{@all_stations.map { |x| x.name}.join(", ")}"
  end
end