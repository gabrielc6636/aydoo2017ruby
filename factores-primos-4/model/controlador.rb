require_relative '../model/ImpresorAscendente'
require_relative '../model/ImpresorDescendente'
require_relative '../model/validador'
require_relative '../model/respuesta'

class Controlador
  
  def generarFactores(numeroPorFactorizar,tipoFormato)
    respuesta = Respuesta.new(400,"Bad Request")
    if validarParametro(numeroPorFactorizar) == true
      respuesta = Respuesta.new(200, calcularFactores(numeroPorFactorizar,tipoFormato))
    end
    return respuesta
  end
  
	def calcularFactores(numeroPorFactorizar,tipoFormato)
    numeroAFactorizar = numeroPorFactorizar
    cadenaDeFactores = ''
    opciones = {}
    opciones["ASC"] = ImpresorAscendente.new
    opciones["DESC"] = ImpresorDescendente.new
    cadenaDeFactores = opciones[tipoFormato].imprimirConFormato(numeroAFactorizar) 
    return cadenaDeFactores
  end
  
  def validarParametro(numeroPorFactorizar)
    validador = Validador.new
    return validador.es_Numerico(numeroPorFactorizar)
  end
end