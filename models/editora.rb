require 'sinatra'
require 'active_record'
require_relative '../config.rb'

class Editora < ActiveRecord::Base
  has_many :livros
end

