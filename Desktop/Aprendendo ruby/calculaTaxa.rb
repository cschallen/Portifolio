class calculaTaxa
  def saque(conta)
    case conta.tipo
    when "juridica" then conta.saldo-CalculaTaxaCnpj.valorTaxa
    when "fisica" then conta.saldo-CalculaTaxaCpf.valorTaxa
    end
  end

end
