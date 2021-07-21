require './routes/editora.rb'

RSpec.describe "Editoras", type: :request do
  describe "GET /consulta/editoras" do
    it "está funcionando" do
      editora = Editora.new(nome: 'Aleph')
      expect{'/consulta/editoras'}
      editora.valid?
    end
  end
end

