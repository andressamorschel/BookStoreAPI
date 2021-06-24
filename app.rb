require 'sinatra'
require 'sinatra/contrib'
require 'sinatra/reloader'
require 'active_record'

ActiveRecord::Base.establish_connection(
 :adapter  => "mysql2",
 :host     => "localhost",
 :username => "root",
 :password => "Andre55#",
 :database => "livraria"
);

