require 'sinatra'
require_relative '../model/controlador'
require_relative '../model/respuesta'

get '/primos/:valor' do |numeroAFactorizar|
  controlador = Controlador.new
  respuesta = controlador.generarFactores(numeroAFactorizar,"ASC")
  status respuesta.getStatus
  body respuesta.getBody
end

post '/primos' do
  numeroAFactorizar = params['x']
  controlador = Controlador.new
  respuesta = controlador.generarFactores(numeroAFactorizar,"DESC")
  status respuesta.getStatus
  body respuesta.getBody
end