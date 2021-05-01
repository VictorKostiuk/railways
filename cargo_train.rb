class CargoTrain < Train
  TRAIN_TYPE = "Cargo"

  def add_car(car_name)
    if car_name.class == CargoCar
      @cars.push car_name
    else
      validate_car_type
    end
  end
end