require './hash.rb'

class RailwayStation
  attr_reader :name

  @@all_stations = []

  ABC = /[a-zA-Z]{3,10}/

  def initialize(name)
    @name = name
    @@all_stations.push name
    @all_trains = []
    validate!
  end

  def validate!
      begin
      raise "Назва не може бути nil" if @name.nil?
      raise "Назва станції не підходить" if @name !~ ABC
    rescue Exception => e
      puts "Exception: #{e.message}"
    end
  end

  def self.all
    @@all_stations
  end

  def acceptance_of_train(train)
    @all_trains.push train
    puts "Прибув поїзд #{train}"
  end

  def all_trains
     @all_trains
  end

  def types_of_train
    @all_trains.each_with_object({}) { |(k,v),g| (g[v] ||= []) << k }
  end

  def send_a_train(tr_name)
    @all_trains.except!(tr_name)
    puts "Станцію #{@name} покинув поїзд:#{tr_name}"
  end
end