# Documentation
class Persona
  attr_accessor :name, :lastname, :identificacion, :telefono, :productos

  def initialize(name, lastname, identificacion, telefono)
    @name = name
    @lastname = lastname
    @identificacion = identificacion
    @telefono = telefono
    @productos = []
  end
end
