require_relative "cartas1"

class Barajas

    attr_accessor :cartas

    def initialize
        
        pintas = ['C','D','E','T']
        @cartas = []
        pintas.each do |pintas|
            13.times do |i|
                combinaciones = Carta.new(i+1, pintas)
                @cartas.push(combinaciones)
            end
    end
end

def barajar
    @cartas.shuffle
end

def sacar
    @cartas.pop
end

def repartir_mano
    @cartas.pop(5)
end

end

juego_1 = Barajas.new
pp juego_1.repartir_mano
juego_1.cartas = juego_1.barajar
pp juego_1.repartir_mano

