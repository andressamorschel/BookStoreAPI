require './routes/usuario.rb'

RSpec.describe "Usuario", type: :request do
  describe "GET /consulta/usuarios" do
    it "está funcionando" do
      usuario = Usuario.new(nome: 'O milagre da manhã')
      expect{'/consulta/usuarios"'}
      usuario.valid?
    end
  end
end

