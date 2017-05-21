require 'rspec' 
require_relative '../model/respuesta'

describe 'Respuesta' do

	before do
      @respuestaOK = Respuesta.new(200,"OK")
	    @respuestaBR = Respuesta.new(400,"Bad Request")
    end

  describe "OK" do
      it "si tuve un valor numerico tengo que tener 200" do
        expect(@respuestaOK.getStatus).to eq 200
      end
    end
  
end