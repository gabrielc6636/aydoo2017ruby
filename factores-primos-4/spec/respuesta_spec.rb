require 'rspec' 
require_relative '../model/respuesta'

describe 'Respuesta' do

	before do
      @respuestaOK = Respuesta.new(:status => 200, :body => "OK")
	    @respuestaBR = Respuesta.new(:status => 400, :body => "Bad Request")
    end

  describe "OK" do
      it "si tuve un valor numerico tengo que tener 200" do
        expect(@respuestaOK.getStatus).to eq(200)
      end
    end
  
end