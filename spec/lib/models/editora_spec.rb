require './models/editora.rb'
require './init.rb'

RSpec.describe Editora, type: :model do
  context "verificando campos de editora" do
    it "tem um nome" do
      editora = Editora.new(nome: 'Andressa')
      expect(editora).to have_attributes(:nome => "Andressa")
    end
  end
end