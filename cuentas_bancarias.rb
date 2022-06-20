class Usuario
    attr_accessor :nombre,:cuenta,:saldo
    def initialize(nombre,cuenta)
        raise ArgumentError, "El nombre debe pertenecer a la clase String" if nombre.class != String
        @nombre = nombre
        @cuenta = []
        @cuenta << cuenta
    end
   def saldo_total
        @cuenta.map {|x| x.saldo}.sum
   end

   
end

class CuentaBancaria
    attr_accessor :nombre_banco,:numero_cuenta,:saldo
    def initialize(nombre,numero_cuenta,saldo = 0)
        raise ArgumentError, "El nombre debe pertenecer a la clase String" if nombre.class != String
        raise ArgumentError, "El numero_cuenta debe pertenecer a la clase Integer" if numero_cuenta.class != Integer
        @nombre = nombre
        @numero_cuenta = numero_cuenta
        @saldo = saldo
    end

    def trasferir(monto,cuenta)
        raise ArgumentError, "Saldo insuficiente para trasferir" if monto > saldo 
        @saldo -= monto
        cuenta.saldo += monto


    end

end

cuenta1 = CuentaBancaria.new('Santader',123,5000)
cuenta2 = CuentaBancaria.new('Santander',1234,5000)
usuario1 = Usuario.new('Pepe',[cuenta1,cuenta2])
cuenta1.trasferir(5000,cuenta2)
cuenta1.saldo
cuenta2.saldo