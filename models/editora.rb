require 'sinatra'
require 'active_record'

class Editora < ActiveRecord::Base
  has_many :livros
  validates_associated :nome, presence: true, length: { minimum: 4 }, uniqueness: true
end

