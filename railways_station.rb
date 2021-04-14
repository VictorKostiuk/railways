load './hash.rb'

class RailwayStation
  attr_reader :name

  def initialize(name)
    @name = name
    @all_trains = []
  end

  def acceptance_of_train(train_name)
    @all_trains.push train_name
    puts "Прибув поїзд #{train_name}"
  end

  def all_trains
    puts @all_trains
  end

  def types_of_train
    @all_trains.each_with_object({}) { |(k,v),g| (g[v] ||= []) << k }
  end

  def send_a_train(tr_name)
    @all_trains.except!(tr_name)
    puts "Станцію #{@name} покинув поїзд:#{tr_name}"
  end
end