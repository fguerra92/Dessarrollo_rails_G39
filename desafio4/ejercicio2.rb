module Habilidades

  module Volador
  def volar
  'Estoy volandooooo!'
  end

  def aterrizar
  'Estoy cansado de volar, voy a aterrizar'
      end
  end

  module Nadador
  def nadar
  'Estoy nadando!'
  end

  def sumergir
  'glu glub glub glu'
    end
  end

  module Caminante
      def caminar
      'Puedo caminar!'
      end
    end
  end
  
  module Alimentacion
  module Herbivoro
  def comer
      'Puedo comer plantas!'
      end
  end

  module Carnivoro
  def comer
  'Puedo comer carne!'
      end
    end
  end


  class Animal 
  attr_accessor :nombre
  def initialize(nombre)
      @nombre = nombre
      end
  end

  class Ave < Animal
  end

  class Mamiferos < Animal
  end

  class Insecto < Animal
  end



  class Pinguino < Ave
      include Habilidades::Nadador
      include Habilidades::Caminante
      include Alimentacion::Carnivoro
  end

  class Paloma < Ave
      include Habilidades::Volador
      include Habilidades::Caminante
      include Alimentacion::Carnivoro
  end

  class Pato < Ave
      include Habilidades::Nadador
      include Habilidades::Volador
      include Habilidades::Caminante
      include Alimentacion::Herbivoro
      #include Alimentacion::Carnivoro
  end



  class Perro < Mamiferos
      include Habilidades::Nadador
      include Habilidades::Caminante
      include Alimentacion::Carnivoro
  end

  class Gato < Mamiferos
      include Habilidades::Caminante
      include Alimentacion::Carnivoro
  end

  class Vaca < Mamiferos
      include Habilidades::Caminante
      include Alimentacion::Herbivoro
  end


  class Mosca < Insecto
      include Habilidades::Volador
      include Alimentacion::Herbivoro
      include Alimentacion::Carnivoro
  end

  class Mariposa < Insecto
      include Habilidades::Volador
      include Alimentacion::Herbivoro
  end

  class Abeja < Insecto
      include Habilidades::Volador
      include Alimentacion::Herbivoro
      include Alimentacion::Carnivoro
  end

perro_01 = Perro.new("Boby")
  puts "#{perro_01.comer}"

pato_01 = Pato.new("PatoCarlos")
 puts "#{pato_01.comer}"
  
abeja_01 = Abeja.new("Reina")
 puts "#{abeja_01.volar}"
