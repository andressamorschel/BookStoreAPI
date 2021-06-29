require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(
 :adapter  => "mysql2",
 :host     => "localhost",
 :username => "root",
 :password => "Andre55#",
 :database => "livraria"
);

set :database, {adapter: "mysql2", database: "livraria"}