require './models/livro.rb'
require './init.rb'

RSpec.describe Livro, type: :model do
  context "verificando campos de livro" do
    it "não é válido sem publicado" do
      livro = Livro.new(nome: 'O poder do hábito', publicado: nil, editora_id: 2)
      expect(livro).to_not be_valid
    end
    it "não é válido sem editora_id" do
      livro = Livro.new(nome: 'O poder do hábito', publicado: 0, editora_id: nil)
      expect(livro).to_not be_valid
    end
    it "não é válido sem nome"do
      livro = Livro.new(nome: nil, publicado: 0, editora_id: 2)
      expect(livro).to_not be_valid
    end
    it "é válido se todos os campos são preenchidos" do
      livro = Livro.new(nome: 'O poder do hábito', publicado: 0, editora_id: 2)
      livro.valid?
    end
  end
end