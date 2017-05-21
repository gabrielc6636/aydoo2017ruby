require 'sinatra'
require_relative '../model/impresor'
require_relative '../model/validador'
require_relative '../model/controlador'

get '/primos/:valor' do |numeroAFactorizar|
  puts numeroAFactorizar
  controlador = Controlador.new
  if controlador.validarParametro(numeroAFactorizar) == true
    body controlador.calcularFactores(numeroAFactorizar,"ASC")
  else
     status 400
      body 'Bad Request'
  end
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

get '/hola/:nombre' do |numeroAFactorizar|
  variable = numeroAFactorizar
  "Hola #{variable}!"
  f = Validador.new
 if f.es_Numerico(variable)==true
  puts "Es Numerico"
   body 'Es Numerico'
 else
    status 400
    body 'Bad Request'
  end
  
end


# Cuando se invoca por GET devuelve en orden descendente
#GET /primos?x=360
#5,3,3,2,2,2

# Cuando se invoca por POST devuelve en orden ascendente
#POST /primos
#(en el body) x=360
#2,2,2,3,3,5

# En ambos casos cuando x no se una valor numérico debe devolverse un 400 que representa BadRequest