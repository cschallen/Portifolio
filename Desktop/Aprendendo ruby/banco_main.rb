require_relative "banco"
require_relative "usuario"

class Banco_main

 banco= Banco.new
 banco.criar_conta("Bruna", 700, 12345, "aaa", 1000, "fisica")
 banco.criar_conta("Lucas", 500,67890, "senha", 0, "juridica")

 banco.sacar(500, "aaa")
 banco.depositar("aaa", 300)
 banco.ver_contas
 banco.transferencia(100, "aaa", "senha")
 banco.ver_contas
  #bruna = Usuario.new("Bruna", 700, 12345, "senha", 1000)
#  banco = Banco.new("Banrisul", bruna)
  #banco.depositar(100)
#  puts banco.sacar(1000, "senha")
#  puts bruna.nome
#  puts bruna.saldo

  #mathias = Usuario.new("Mathias", 500,67890, "senha", 0)
  #bradesco = Banco.new("Bradesco", mathias)
  #bradesco.transferencia(banco, 100, "senha")
  #puts mathias.saldo
  #puts bruna.saldo

end
