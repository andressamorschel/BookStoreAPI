require 'sinatra'
require 'active_record'

class Livro < ActiveRecord::Base
  has_and_belongs_to_many :autores
  validates :nome, presence: true, length: { in: 2..15 }
  validates :publicado, presence: true
  validates :id_editora, presence: true
  validates :id_autor, presence: true
end
