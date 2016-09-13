require_relative "banco"

class Usuario
    attr_accessor :saldo, :nome, :id, :senha, :limite, :tipo
  def initialize(nome, saldo, id, senha, limite, tipo)
    @nome = nome
    @saldo = saldo
    @id = id
    @senha = senha
    @limite = limite
    @tipo = tipo
  end
end
