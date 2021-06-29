require 'sinatra'
require 'active_record'
require_relative '../config.rb'

class Likes < ActiveRecord::Base
  belongs_to :usuarios
end
