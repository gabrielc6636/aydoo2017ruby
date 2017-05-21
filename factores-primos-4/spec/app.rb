require 'sinatra'
require_relative '../model/impresor'
require_relative '../model/validador'
require_relative '../model/controlador'
require_relative '../model/respuesta'

get '/primos/:valor' do |numeroAFactorizar|
  puts numeroAFactorizar
  controlador = Controlador.new
  respuesta = controlador.generarFactores(numeroAFactorizar,"ASC")
  status respuesta.getStatus
  body respuesta.getBody
  #if controlador.validarParametro(numeroAFactorizar) == true
  #  body controlador.calcularFactores(numeroAFactorizar,"ASC")
  #else
  #   status 400
  #    body 'Bad Request'
  #end
end

post '/primos' do
  numeroAFactorizar = params['x']
  puts numeroAFactorizar
  controlador = Controlador.new
  if controlador.validarParametro(numeroAFactorizar) == true
     body controlador.calcularFactores(numeroAFactorizar,"DESC")
  else
     status 400
      body 'Bad Request'
  end
end