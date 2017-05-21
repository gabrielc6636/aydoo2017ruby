require_relative '../model/factorizador'

class ImpresorAscendente
  def imprimirConFormato(numeroPorFactorizar)

    numeroAFactorizar = numeroPorFactorizar.to_i
    
    factorizador = Factorizador.new
    listaDeFactores = factorizador.calcularFactores(numeroAFactorizar)
    
    cadenaDeFactores = listaDeFactores.join(',')
    
    return cadenaDeFactores
    
  end

end