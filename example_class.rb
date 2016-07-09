# ExamClass
class ExamClass
  def self.mostrar # (key, data)
    personas = { '1' => {
                      :nombre => 'Pedro',
                      :apellido=> 'Paramo',
                      :beneficiarios => [{
                                        :nombre=>'Ana',
                                        :apellido=>'Rosales' }] },
              '2'=>{
                :nombre => 'Ana',
                :apellido => 'Perez',
                :beneficiarios => [{
                                  :nombre=>'Yony',
                                  :apellido=>'Quiceno'}]},
              '3' => {
                :nombre => 'Gaston',
                :apellido=> 'Nose',
                "beneficiarios" => [{
                                  :nombre=>'Santiago',
                                  :apellido=>'Molina' }, {
                                                          :nombre=>'Diana',
                                                          :apellido=>'Munoz' }] } }
    # return personas[key][data]
  end

  def self.insert(vector)
    print 'Ingrese su nombre: '
    key = vector.size + 1
    vector[key.to_s] = {:nombre => gets.chomp}
  end
end
