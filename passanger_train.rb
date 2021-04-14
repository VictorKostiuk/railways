class PassangerTrain < Train
  TRAIN_TYPE = "Passanger"

  def add_car(car_name)
    if car_name.class == PassangerCar
      @cars.push car_name
    else
      puts "Вагон не підходить"
    end
  end
end