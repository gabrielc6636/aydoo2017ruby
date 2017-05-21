require_relative '../model/factorizador'

class ImpresorDescendente
  def imprimirConFormato(numeroPorFactorizar)

    numeroAFactorizar = numeroPorFactorizar.to_i
    
    factorizador = Factorizador.new
    listaDeFactores = factorizador.calcularFactores(numeroAFactorizar)
    
    listaDeFactores = listaDeFactores.sort.reverse
    cadenaDeFactores = ''
    for arr in listaDeFactores
      cadenaDeFactores = cadenaDeFactores + ' ' + arr.to_s + ' '
    end
    
    return cadenaDeFactores
    
  end

end