load './hash.rb'
load "./route.rb"
load "./railways_station.rb"
load "./train.rb"
load "./cargo_train.rb"
load "./passanger_train.rb"
load "./cargo_car.rb"
load "./passanger_car.rb"

# st1 = RailwayStation.new("Салам")
# st2 = RailwayStation.new("Львів")
# st3 = RailwayStation.new("Київ")
# st4 = RailwayStation.new("Алекум")
#
# route1 = Route.new(st1, st4)
#
# route1.add_station(st2)
# route1.add_station(st3)
#
# route1.station_list
#
# route1.delete_station(st3)
#
# route1.station_list
#
# train1 = CargoTrain.new( "Грузовий" , 24)

ct = CargoTrain.new

cargo = CargoCar.new("OREO")

ct.add_car(cargo)

puts ct.cars_count

ct.delete_car(cargo)

puts ct.cars_count

station = RailwayStation.new("Aboba")

station.acceptance_of_train(ct)

station.all_trains