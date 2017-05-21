require 'rspec' 
require_relative '../model/factorizador'

describe 'Factorizador' do

	before do
      @factorizador = Factorizador.new
      @valido360 = @factorizador.calcularFactores('360')
	  @valido1 = @factorizador.calcularFactores('1')

    end

  describe "OK" do
    
    it 'si tengo 360 de parametro obtengo 2 2 2 3 3 5' do
    expect(@valido360.length).to eq 6
    end
    
  end
  
  describe "Bad Request" do
    
    it 'si tengo 360 de parametro obtengo nada' do
    expect(@valido1.length).to eq 0
    end
  end
  
end