require './models/likes.rb'
require './init.rb'

RSpec.describe Like, type: :model do
  context "verificar se todos campos estão preenchidos" do
    it "válido se preenchidos todos os campos" do
      like = Like.new(user_id: 2, ref_tipo: 'Livro', ref_id: 2)
      expect(like).to be_valid
    end
  end
end