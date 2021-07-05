require 'sinatra'
require 'active_record'

class Autor < ActiveRecord::Base
  has_and_belongs_to_many :livros
  validates :nome, presence: true, length: { minimum: 4 }
  validates :data_nascimento, presence: true
  scope :nome, -> { where(nome.nome) }
end


