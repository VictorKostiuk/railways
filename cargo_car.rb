require "./company_name.rb"


class CargoCar
  attr_reader :name
  CAR_TYPE = "Cargo"
  include CompanyName
  def initialize(name)
    @name = name
  end
end