require 'sinatra'
require 'active_record'
require_relative '../config.rb'

class Autore < ActiveRecord::Base
  has_and_belongs_to_many :livros
end


