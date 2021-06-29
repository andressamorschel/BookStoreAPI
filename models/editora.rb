require 'sinatra'
require 'active_record'
require_relative '../config.rb'

class Editora < ActiveRecord::Base
  has_many :livros
  validates_associated :nome, presence: true, length: { minimum: 4 }, uniqueness: true
end

