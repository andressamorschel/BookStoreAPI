require 'sinatra'
require 'active_record'

class Livro < ActiveRecord::Base
  has_and_belongs_to_many :autores
  validates_associated :nome, presence: true, length: { in: 2..15 }
  validates_associated :publicado, presence: true
  validates_associated :id_editora, presence: true
  validates_associated :id_autor, presence: true
end
