class Estudiante
  attr_reader :nombre, :nota1, :nota2, :nota3, :nota4
  def initialize(nombre, nota1, nota2, nota3, nota4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @nota3 = nota3
    @nota4 = nota4
  end

  def self.read_file(filename = 'notas.txt')
    estudiantes = []
    data = []
    File.open(filename, 'r') { |file| data = file.readlines  }
    data.each do |estudiante|
    estudiantes << Estudiante.new(*estudiante.split(','))
  end
  puts estudiantes
end
end

Estudiante.read_file('notas.txt')