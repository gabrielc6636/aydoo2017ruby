require_relative 'spec_helper.rb'

describe 'APP' do

	it "si llamo a get/primos sin paramtros no esta OK" do
	    get "/primos"
	    expect(last_response.status).to eq 400
	end

	it "si llamo a post/primos sin parametros no esta OK" do
	    post "/primos"
	    expect(last_response.status).to eq 400
	end

	it "si llamo a get/primos con parametro  12 deberia ser 3,2,2" do
	    get "/primos", params = {"x" => "12"}
	    expect(last_response.body).to eq "3,2,2"
	end

	it "si llamo a post/primos con parametro 12 deberia ser 2,3,3" do
	    post "/primos", params = {"x" => "12"}
	    expect(last_response.body).to eq "2,2,3"
	end

	it "si llamo a post/primos con parametro alfanumerico deberia tener status 400" do
	    post "/primos", params = {"x" => "12a"}
	    expect(last_response.status).to eq 400
	end

	it "si llamo a get/primos con parametro alfanumerico deberia tener status 400" do
	    get "/primos", params = {"x" => "12a"}
	    expect(last_response.status).to eq 400
	end

	it "llamada a post/primos con parametro 0 deberia ser vacio" do
	    post "/primos", params = {"x" => "0"}
	    expect(last_response.body).to eq ""
	end

	it "llamada a get/primos con parametro 0 deberia ser vacio" do
	    get "/primos", params = {"x" => "0"}
	    expect(last_response.body).to eq ""
	end

end