require './persona'
# Crear producto
class Producto
  attr_accessor :name, :stock, :precio_base, :precio_venta

  def initialize(name, stock, precio_base, precio_venta)
    @name = name
    @stock = stock
    @precio_base = precio_base
    @precio_venta = precio_venta
  end
end
# Crear vendedor
class Vendedor < Persona
  attr_accessor :ganancia, :vendidos, :productos_vendidos
  def initialize(name, lastname, identificacion, telefono)
    super(name, lastname, identificacion, telefono)
    @ganancia = 0
    @vendidos = 0
    @productos_vendidos = []
  end
end
# Crear comprador
class Comprador < Persona
  attr_accessor :dinero, :gastado, :comprados, :productos_comprados, :vendedor
  def initialize(name, lastname, identificacion, telefono, dinero)
    super(name, lastname, identificacion, telefono)
    @dinero = dinero
    @gastado = 0
    @comprados = 0
    @productos_comprados = []
    @vendedor = ''
  end

  # Metodo para comprar productos
  def comprar(nombre, cantidad)
    buscar(nombre).stock -= cantidad
    @gastado += buscar(nombre).precio_venta * cantidad
    @dinero -= buscar(nombre).precio_venta * cantidad
    @productos_comprados << "#{buscar(nombre).name} - #{cantidad}"
    @comprados += cantidad
    @vendedor.ganancia += buscar(nombre).precio_base * cantidad
    @vendedor.vendidos += cantidad
    @vendedor.productos_vendidos << "#{buscar(nombre).name} - #{cantidad}"
  end

  # Metodo para buscar productos
  def buscar(nombre_producto)
    for i in 0..@vendedor.productos.size - 1 do
      if @vendedor.productos[i].name == nombre_producto
        return @vendedor.productos[i]
      else
        puts "No hay de eso"
      end
    end
  end
end
