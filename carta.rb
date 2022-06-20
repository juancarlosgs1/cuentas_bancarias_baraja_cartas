class Carta
    attr_reader :numero, :pinta

    def initialize(numero,pinta)
        # Validacion del atributo Numero
        raise ArgumentError, 'El numero debe pertenecer a la clase Integer' if numero.class != Integer
        if numero < 1 || numero > 13
            raise ArgumentError , 'El numero debe estar entre 1 y 13' 
        end
        #Validacion del atributo Pinta
        pintas = ["C","D","E","T"]
        unless pintas.include?(pinta)
            raise ArgumentError , 'Pinta debe ser C - D - E - T' 
        end
        @numero = numero
        @pinta = pinta
    end

    def nombre_pinta
        return "Corazon" if @pinta == "C"
        return "Diamante" if @pinta == "D"
        return "Espada" if @pinta == "E"
        return "Trebol" if @pinta == "T"
    end

end

