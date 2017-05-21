require_relative '../model/factorizador'

class ImpresorDescendente
  def imprimirConFormato(numeroPorFactorizar)
    numeroAFactorizar = numeroPorFactorizar.to_i
    factorizador = Factorizador.new
    listaDeFactores = factorizador.calcularFactores(numeroAFactorizar)
    listaDeFactores = listaDeFactores.sort.reverse
    cadenaDeFactores = listaDeFactores.join(',')
    return cadenaDeFactores
  end

end