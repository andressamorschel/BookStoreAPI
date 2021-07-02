require 'sinatra'
require 'active_record'

class Usuario < ActiveRecord::Base
  has_many :livros
  validates :nome, :aniversario, presence: true, uniqueness: true
end
