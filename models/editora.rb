require 'sinatra'
require 'active_record'

class Editora < ActiveRecord::Base
  has_many :livros
  validates :nome, presence: true, length: { minimum: 4 }
  scope :nome, -> { where(nome.nome) }
end
