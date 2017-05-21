require 'rspec' 
require_relative '../model/respuesta'
require_relative '../model/controlador'

describe 'Controlador' do

	before do
      @controlador = Controlador.new
      @valido360 = @controlador.validarParametro('360')
      @validoGabriel = @controlador.validarParametro('Gabriel')
      @respuestaOK = @controlador.generarFactores('360','ASC')
      @respuestaOK2 = @controlador.generarFactores('360','DESC')
	    @respuestaBR = @controlador.generarFactores('Gabriel','ASC')
   
    end

  describe "OK" do
    
    it 'si tengo 360 de parametro es numerico' do
    expect(@valido360).to eq true
  end
    
      it "si tuve un valor numerico tengo que tener 200" do
        expect(@respuestaOK.getStatus).to eq 200
      end
      it "si tengo 360 de parametro obtengo 2 2 2 3 3 5" do
        expect(@respuestaOK.getBody).to eq ' 2  2  2  3  3  5 '
      end
    it "si tengo 360 de parametro obtengo 2 2 2 3 3 5" do
        expect(@respuestaOK2.getBody).to eq ' 5  3  3  2  2  2 '
      end 
    end
  
  describe "Bad Request" do
    
    it 'si tengo Gabriel de parametro no es numerico' do
    expect(@validoGabriel).to eq false
  end
    
      it "si tuve un valor no numerico tengo que tener 400" do
        expect(@respuestaBR.getStatus).to eq 400
      end
    end
  
end