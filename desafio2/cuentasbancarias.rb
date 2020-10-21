class Usuario
    def initialize(usuario, cuentas_bancarias)
        @usuario = usuario
        @cuentas_bancarias = cuentas_bancarias
    end

    def saldo
        @cuentas_bancarias.map{|cuentas_bancarias| cuentas_bancarias.saldo}.sum
    end
end

class CuentaBancaria

attr_accessor :saldo

    def initialize(nombre_banco, numero_cuenta, saldo =0)
        @nombre_banco = nombre_banco
        @numero_cuenta = numero_cuenta
        @saldo = saldo
    end

    def transferir(monto, otra_cuenta)
        @saldo -= monto
        otra_cuenta.saldo += monto
    end
 
end

cuenta_bancosantander = CuentaBancaria.new("Banco Santander", "111", 5000)
cuenta_bancoitau = CuentaBancaria.new("Banco Itau", "222", 5000)

#pp cuenta_bancosantander
#pp cuenta_bancoitau

cuenta_bancosantander.transferir(1000, cuenta_bancoitau)

pp cuenta_bancosantander
pp cuenta_bancoitau


usuario = Usuario.new('Felipe', [cuenta_bancoitau, cuenta_bancosantander])

puts usuario.saldo