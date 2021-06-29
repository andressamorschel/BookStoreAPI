require 'active_record'
require_relative '../config.rb'

class MarcadorPagina < ActiveRecord::Base
  validates :nome, presence: true, length: { minimum: 5 }
end 