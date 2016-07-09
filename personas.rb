# Metodos de clase
class Persona
  attr_accessor :nombre, :sexo
  @@poblacion = 6_000_000_000
  def initialize(nombre, sexo)
    @nombre = nombre
    @sexo = sexo
    @@poblacion += 1
  end

  def morir
    @@poblacion -= 1
    @nombre = ' '
    @sexo = ' '
  end

  def self.poblacion
    @@poblacion
  end
end
