class CargoTrain < Train
  TRAIN_TYPE = "Cargo"

  def add_car(car_name)
    if car_name.class == CargoCar
      @cars.push car_name
    else
      puts "Вагон не підходить"
    end
  end
end