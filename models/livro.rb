require 'sinatra'
require 'active_record'

class Livro < ActiveRecord::Base
  has_and_belongs_to_many :autores
  belongs_to :editora
  validates :nome, presence: true, length: { in: 2..15 }
  validates :publicado, presence: true
  validates :id_editora, presence: true
  scope :publicado, -> { where(publicado: true) }
end
