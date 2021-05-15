require "./company_name.rb"
class PassangerCar
  CAR_TYPE = "Passanger"
  attr_reader :name
  include CompanyName
  def initialize(name)
    @name = name
  end
end