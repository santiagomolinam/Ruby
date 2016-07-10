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
  # How many numbers are there between o and 100
  def self.even
    count = 0
    count1 = 0
    condition = true
    puts 'Cuántos números hay entre 0 y 100?'
    while condition
      count += 1 if count1 % 2 == 0
      count1 += 1
      condition = false if count1 == 101
    end
    puts "Hay #{count}"
  end

  def self.divisibility
    puts 'Numbers between 0 and 1000 that are dibisible by 7'
    count = 0
    for i in 1..1000 do
      if i % 7 == 0
        puts i
        count += 1
        break unless count < 99
      end
    end
    # puts "Between 0 and 1000 there are #{count} numbers dibisible by 7"
    puts "contador #{count}"
  end

  def self.divisibility1
    count = 0
    for i in 1..100 do
      for j in 1..100 do
        count += 1 if j % i == 0
      end
      puts "There are #{count} number dibisible by #{i}, from 1 to 100."
      count = 0
    end
  end



  def self.prime
    puts 'Cuántos y cuáles son los números primos entre 1 y 100? '
    pri = []
    div = 0
    num = 2
    while num <= 100
      for i in 1..num do
        div += 1 if num % i == 0
        break if div > 2
      end
      pri.push(num) if div < 3
      num += 1
      div = 0
    end
    puts pri.length
    pri
  end
end
