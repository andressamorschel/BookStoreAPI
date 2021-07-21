require './models/usuario.rb'
require './init.rb'

RSpec.describe Usuario, type: :model do
  context "verificando campos de usuario" do
    it "tem um nome" do
      usuario = Usuario.new(nome: 'Andressa')
      expect(usuario).to be_valid
    end
  end
end