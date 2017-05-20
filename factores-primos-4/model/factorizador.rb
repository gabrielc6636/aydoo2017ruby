class Factorizador
	def calcularFactores(numeroPorFactorizar)
    numeroAFactorizar = numeroPorFactorizar
    factor = 2
    contador=0
    listaDeFactores=[]
        if numeroAFactorizar > 1
            while numeroAFactorizar != 1
                while (numeroAFactorizar % factor) == 0
                    numeroAFactorizar = numeroAFactorizar/factor
                    listaDeFactores[contador] = factor
                    contador = contador+1
                end
                factor=factor+1
            end
        else
            puts "el valor debe ser mayor a 1"
        end
    return listaDeFactores
  end
end