require 'sinatra'
require 'active_record'

class Usuario < ActiveRecord::Base
  has_many :livros
  validates :nome, presence: true
  scope :nome, -> { where(nome.nome) }
end
