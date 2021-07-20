require 'sinatra'
require 'active_record'

class Like < ActiveRecord::Base
  belongs_to :usuarios
end
