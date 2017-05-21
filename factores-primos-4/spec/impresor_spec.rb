require 'rspec' 
require_relative '../model/ImpresorAscendente'
require_relative '../model/ImpresorDescendente'

describe 'ImpresorAscendente' do

	before do
      @impresorAsc = ImpresorAscendente.new
      @respuestaASC = @impresorAsc.imprimirConFormato('360')
    end

  describe "OK" do
    it "si tengo 360 de parametro obtengo 2 2 2 3 3 5" do
        expect(@respuestaASC).to eq '2,2,2,3,3,5'
      end
    end
end

describe 'ImpresorDescendente' do

	before do
	  @impresorDsc = ImpresorDescendente.new
      @respuestaDESC = @impresorDsc.imprimirConFormato('360')
    end

  describe "OK" do
    it "si tengo 360 de parametro obtengo 5  3  3  2  2  2" do
        expect(@respuestaDESC).to eq '5,3,3,2,2,2'
      end 
    end
  
end