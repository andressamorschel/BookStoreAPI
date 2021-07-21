require './routes/livro.rb'

RSpec.describe "Livros", type: :request do
  describe "GET /consulta/livros" do
    it "está funcionando" do
      livro = Livro.new(nome: 'O milagre da manhã', publicado: 1, editora_id: 3)
      expect{'/consulta/livros'}
      livro.valid?
    end
  end
end

