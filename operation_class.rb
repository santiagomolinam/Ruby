# Basic operations with Ruby addition, subtraction, multiplication, divition and
# concatenation.
class MathClass
  def self.add_up(x, y)
    x + y
  end

  def self.subt_op(x, y)
    puts "#{x} - #{y} = #{x - y}"
  end

  def self.mult_op(x, y)
    puts "#{x} x #{y} = #{x * y}"
  end

  def self.div_op(x, y)
    puts "#{x} / #{y} = #{x.to_f / y}"
  end

  def self.conc_op(x, y)
    puts "#{x} #{y} != #{x + y}"
  end

  def self.operations_op(x, y)
    add_up(x, y)
    subt_op(x, y)
    mult_op(x, y)
    div_op(x, y)
    conc_op(x, y)
  end
end
