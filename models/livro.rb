require 'sinatra'
require 'active_record'
require_relative '../config.rb'

class Livro < ActiveRecord::Base
  belongs_to :editoras
  has_and_belongs_to_many :autores
end
