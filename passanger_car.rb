require "./company_name.rb"
class PassangerCar
  CAR_TYPE = "Passanger"

  include CompanyName
  def initialize(name)
    @name = name
  end
end