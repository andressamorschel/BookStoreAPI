require 'sinatra'
require 'active_record'

class Likes < ActiveRecord::Base
  belongs_to :usuarios
  validates :nome, presence: true
end
