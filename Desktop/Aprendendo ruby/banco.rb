require_relative "usuario"
require_relative 'calculaTaxa'
class Banco
  attr_accessor :saldo, :nome, :id, :usuarios

  def initialize
    #@usuario = usuario
    #@nome = nome
    self.usuarios = []
  end


  def depositar(senha, saldo)
    conta = self.usuarios.find{|usuario| usuario.senha==senha}
    conta.saldo = conta.saldo + saldo
    puts conta.saldo
  end

  def criar_conta(nome, saldo, id, senha, limite, tipo)
    self.usuarios << Usuario.new(nome, saldo, id, senha, limite, tipo)
  end

  def ver_contas
    self.usuarios.each do |c|
      puts "Conta: #{c.id}, Nome: #{c.nome}, Saldo: #{c.saldo}, Limite: #{c.limite}, Tipo: #{c.tipo}"
    end
  end

  def sacar(saque, senha)
    conta = self.usuarios.find{|usuario| usuario.senha==senha}
    if(conta.tipo == "fisica")
      calculaTaxa.saque(conta)
    else(conta.tipo == "juridica")
      calculaTaxa.saque(conta)
    end

    if(!conta)
      puts "senha incorreta!"
    elsif saque > (conta.saldo + conta.limite)
      puts "saldo insuficiente"
    else
      conta.saldo = conta.saldo - saque - imposto
    end
  end

  def transferencia(saldo, senhaOrigem, senhaDestino)
    sacar(saldo, senhaOrigem)
    depositar(senhaDestino, saldo)
  end

end
