require 'sinatra'
require 'active_record'
require_relative '../config.rb'

class Usuario < ActiveRecord::Base
  has_many :livros
end
