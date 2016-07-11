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
    (1..1000).each do |i|
      if i % 7 == 0
        puts i
        count += 1
      end
    end
    puts "Between 0 and 1000 there are #{count} numbers dibisible by 7"
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

  def self.name
    condition = true
    puts 'Ingrese su primer nombre:'
    while condition
      name = gets.chomp
      vector = name.chars
      if /[A-Z]/.match(vector[0]) == nil
        puts "Nombre mal escrito\nIntente nuevamente:"
      else
        puts "Nombre bien escrito\nGracias #{name}"
        break
      end
    end
  end
end

# Ejercicios con iteradores.
class Ex3Class
  def self.iterators
    names = %w(Bob Joe Steve Janice Susan Helen)
    i = 1
    names.each do |name|
      puts "#{i}. #{name}"
      i += 1
    end
  end

  def self.alcancia(valor)
    num = valor / 50
    acum = 0
    dia = 0
    (1..num).each do
      dia += 50
      acum += dia
    end
    puts "Dia #{dia} y acumulado #{acum}"
  end
end

# Ejercicio de registro y calculo de renta
class UserRenta
  def initialize
    @@months = %w(enero Febrero Marzo Abril Mayo Junio Julio Agosto Septiembre Octubre Noviembre Diciembre)
    @users = []
    @declaradores = []
    menu_ppal
  end

  def menu_ppal
    puts " \n ##Menu Principal##\n1) Usuarios\n2) Salir\n "
    @opc_ppl = gets.chomp.to_i
    if @opc_ppl == 1
      puts " \n##Opciones de usuario##"
      puts "1) Registrar usuario\n2) Listar usuarios \n3) Estadisticas \n4)Menu Principal\n "
      @opc_sel = gets.chomp.to_i
      case @opc_sel
      when 1 then add_user
      when 2 then list_users
      when 3 then statics
      when 4 then menu_ppal
      end
    else
      exit
    end
  end

  def add_user
    user = {}
    puts "\nIngrese el nombre:"
    user['name'] = gets.chomp
    puts 'Ingrese el apellido:'
    user['lname'] = gets.chomp
    puts 'Ingresos anuales:'
    user['income'] = incomes
    user['declara_renta'] = renta(user['income'])
    user['Ingresos_netos'] = @acum
    @users.push(user)
    puts "\n Usuario registrado."
    menu_ppal
  end

  def incomes
    vec = []
    @@months.each do |month|
      puts "Ingresos de #{month}:"
      vec.push(gets.chomp.to_f)
    end
    vec
  end

  def renta(vector)
    @acum = 0
    vector.each do |month|
      @acum += month
    end
    if @acum >= 127_256
      @declaradores.push(vector)
      true
    else
      false
    end
  end

  def list_users
    puts "\n##Usuarios registrados##"
    puts @users
    menu_ppal
  end

  def statics
    puts "\nUsuarios registrados #{@users.size}"
    puts "\nUsuarios que declaran renta #{@declaradores.size} representa un #{@declaradores.size * 100 / @users.size}%.\n"
    menu_ppal
  end
end
