require 'rspec' 
require_relative '../model/controlador'
require_relative '../model/respuesta'

describe 'Controlador' do

  let(:controlador) { Controlador.new }  
   
  it 'tengo 360 de parametro reviso que sea numerico' do
    expect(controlador.validarParametro('360')).to eq true
  end
  
  it 'tengo Gabriel de parametro reviso que sea numerico' do
    expect(controlador.validarParametro('Gabriel')).to eq false
  end
  
  it 'tengo 360 de parametro reviso que sea numerico' do
    respuesta  = controlador.generarFactores('360')
    expect(respuesta.getStatus).to eq 200
  end
  
  it 'tengo Gabriel de parametro reviso que sea numerico' do
    expect(controlador.generarFactores('Gabriel').getStatus).to eq 400
  end

end
