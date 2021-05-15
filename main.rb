require './hash.rb'
require "./route.rb"
require "./railways_station.rb"
require "./train.rb"
require "./cargo_train.rb"
require "./passanger_train.rb"
require "./cargo_car.rb"
require "./passanger_car.rb"
require "./company_name.rb"

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

# ct = CargoTrain.new
#
# cargo = CargoCar.new("OREO")
#
# ct.add_car(cargo)
#
# puts ct.cars_count
#
# ct.delete_car(cargo)
#
# puts ct.cars_count
#
# station = RailwayStation.new("Aboba")
#
# station.acceptance_of_train(ct)
#
# station.all_trains

# st1 = RailwayStation.new("Салам")
# st2 = RailwayStation.new("Львів")
# st3 = RailwayStation.new("Київ")
# st4 = RailwayStation.new("Алекум")
#
# RailwayStation.all
#
# train = Train.new
# trai = Train.new
# rain = Train.new
#
# Train.find(2)
# st1 = RailwayStation.new("Aboba")
# st2 = RailwayStation.new("aww")
# train = Train.new("Calo", "q")
# train = Train.new("adw", "as1-ws")
#
# puts Train.instances

# c = CargoCar.new("Boba")
# p = PassangerCar.new("Aboba")
# pt = PassangerTrain.new("Biba", "qw1")
#
# pt.add_car(p)
# pt.add_car(c)
#  st1 = RailwayStation.new("awdawd")
#  st2 = RailwayStation.new("wadawd")
#
# s = RailwayStation.new("loh")
# r = Route.new(st2, st1)
# r.add_station(s)
#  puts r.station_list

# t = CargoTrain.new("boba", "aw1")
# c = CargoCar.new("Boa")
# b = CargoCar.new("Bba")
# a = CargoCar.new("Boda")
# t.add_car(c)
# t.add_car(b)
# t.add_car(a)

t = PassangerTrain.new("boba", "aw1")
c = PassangerCar.new("Boa")
b = PassangerCar.new("Bba")
a = PassangerCar.new("Boda")
t.add_car(c)
t.add_car(b)
t.add_car(a)


# t.cars{  i = t.cars_count
# 3.times do i += 1
# puts t.cars_count[i]
# end}

t.cars { |car| puts car.name }