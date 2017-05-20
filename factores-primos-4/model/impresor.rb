require_relative '../model/factorizador'

class Impresor
  def imprimirEnFormatoAscendente(numeroPorFactorizar)
    puts 'Hola imprimirEnFormatoAscendente'
    puts numeroPorFactorizar
    numeroAFactorizar = numeroPorFactorizar.to_i
    
    f = Factorizador.new
    listaDeFactores = f.calcularFactores(numeroAFactorizar)
    
    cadenaDeFactores = ''
    for arr in listaDeFactores
      cadenaDeFactores = cadenaDeFactores + ' ' + arr.to_s + ' '
    end
    
    puts "cadena de factores:",cadenaDeFactores
    
    puts "terminamos de Imprimir"
    
  end
  
  def imprimirEnFormatoDescendente(numeroPorFactorizar)
    puts 'Hola imprimirEnFormatoDescendente'
    puts numeroPorFactorizar
    numeroAFactorizar = numeroPorFactorizar.to_i
    
    f = Factorizador.new
    listaDeFactores = f.calcularFactores(numeroAFactorizar)
    
    listaDeFactores = listaDeFactores.sort.reverse
    cadenaDeFactores = ''
    for arr in listaDeFactores
      cadenaDeFactores = cadenaDeFactores + ' ' + arr.to_s + ' '
    end
    puts "cadena de factores:",cadenaDeFactores
    
    puts "terminamos de Imprimir"
    
  end
end