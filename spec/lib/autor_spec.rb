require './models/autor.rb'
require './init.rb'

RSpec.describe Autor, type: :model do
  context "verificando campos de autor" do
    it "não é válido sem um nome" do
      autor = Autor.new(nome: nil, data_nascimento: 2003/03/06)
      expect(autor).to_not be_valid
    end
    it "não é válido sem data de nascimento" do
      autor = Autor.new(nome: 'Andressa', data_nascimento: nil)
      expect(autor).to_not be_valid
    end  
    it "válido se preencher todos os campos" do
      autor = Autor.new(nome: 'Andressa', data_nascimento: 2003/03/06)
      autor.valid?
    end
  end
end