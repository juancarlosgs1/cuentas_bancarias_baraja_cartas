require_relative 'carta'
class Baraja
    attr_reader :cartas

    def initialize(cartas = [])
        @cartas = cartas
        array = ['C', 'D', 'E', 'T']

        array.each  do |pinta|
            13.times do |i|
                @cartas.push(Carta.new(i+1,pinta))
            end
        end
        @cartas
    end

    def barajar
        @cartas.shuffle
    end

    def sacar
        @cartas.pop
    end

    def repartir_mano
        mano = Array.new
        5.times do 
            mano.push(self.sacar)
        end
        mano
    end
end

#crear baraja
baraja = Baraja.new

#barajar
baraja.barajar

#sacar
sacar1 = baraja.sacar
sacar2 = baraja.sacar
sacar1.numero
sacar1.pinta
sacar2.numero
sacar2.pinta

#repartir_mano
repartir_mano = baraja.repartir_mano
repartir_mano