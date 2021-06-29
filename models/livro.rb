require 'sinatra'
require 'active_record'
require_relative '../config.rb'

class Livro < ActiveRecord::Base
  has_and_belongs_to_many :autores
  validates :nome, :publicado, :id_editora, :id_autor, presence: true
end
