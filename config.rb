require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(
 :adapter  => "sql3",
 :host     => "localhost",
 :username => "sa",
 :password => "Andre55#",
 :database => "livraria"
);

# set :database, {adapter: "mysql2", database: "livraria"}