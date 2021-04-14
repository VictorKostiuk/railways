load './hash.rb'

class Route
  def initialize(starting_station, terminal_station)
    @all_stations = [starting_station, terminal_station]
  end

  def add_station(station_name)
    @all_stations.insert(-2, station_name)
  end

  def delete_station(station)
    @all_stations.delete(station)
  end

  def station_list
    puts "#{@all_stations.map { |x| x.name}.join(", ")}"
  end
end