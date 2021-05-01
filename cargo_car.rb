require "./company_name.rb"
CAR_TYPE = "Cargo"

class CargoCar
  include CompanyName
  def initialize(name)
    @name = name
  end
end