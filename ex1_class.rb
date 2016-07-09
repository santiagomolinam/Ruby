# Ex1class show operations with conditionals.
class Ex1Class
    def self.salary
      puts 'Bienvenido'
      puts 'Ingrese su salario devengado: '
      salario = gets.chomp.to_f
      if salario <= 689_454 * 13
        puts 'Si salario no es un salario integral'
      else
        puts 'Su salario es un salario integral'
      end
      inte = 689_454 * 13
      print "Recuerde que el salario integral es: #{inte}"
    end

    def self.cycles
      money = 100
      has_money = true
      while has_money
        puts "Keep buying ! You have #{money}"
        money -= 10
        has_money = false if money == 0
      end
      puts 'You have 0 :('
    end

    def self.for
      x = [1, 2, 3, 4, 5]
      for i in x do
        puts i
      end
    end

end

# Ex2Class cycles
class Ex2Class
  def self.even
    count = 0
    puts 'Cuántos números hay entre 0 y 100?'
    for i in 0..100 do
      count += 1 if i % 2 == 0
    end
    puts "Hay #{count}"
  end

  def self.prime
    puts 'Cuántos y cuáles son los números primos entre 1 y 100? '
    count = 0
    for i in 2..100
      for j in 2..i-1
        count += 1
      end
    end
  end
end
