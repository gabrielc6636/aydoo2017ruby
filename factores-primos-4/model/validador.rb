class Validador
	def es_Numerico(variable)
    retorno = false
    if variable =~ /\A[+]?[0-9]*+\Z/	
      retorno = true
    end
      return retorno
	end
end