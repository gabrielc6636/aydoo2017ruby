require 'rspec' 
require_relative '../model/validador'

describe 'Validador' do

	before do
      @validador = Validador.new
      @valido360 = @validador.es_Numerico('360')
      @validoGabriel = @validador.es_Numerico('Gabriel')
    end

  describe "OK" do
    it 'si tengo 360 de parametro es numerico' do
    expect(@valido360).to eq true
    end
   end
  
  describe "Bad Request" do
    it 'si tengo Gabriel de parametro no es numerico' do
    expect(@validoGabriel).to eq false
    end
  end
  
end