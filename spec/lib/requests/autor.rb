require './routes/autor.rb'

RSpec.describe "Autores", type: :request do
  describe "GET /consulta/autores" do
    it "está funcionando" do
      autor = Autor.new(nome: 'Andressa Morschel')
      expect{'/consulta/autores'}
      autor.valid?
    end
  end
end

