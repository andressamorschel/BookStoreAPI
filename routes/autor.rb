require 'sinatra'
require 'active_record'
require_relative '../app.rb'

class Autore < ActiveRecord::Base
end

get('/consulta/autores'){
  result = Autore.all.as_json
  halt(200, result.to_json)
}

Autore.create (
  [
    {:nome => 'Andressa', :data_nascimento => '2003-03-06'},
    {:nome => 'Autor1', :data_nascimento => '1980-11-09'}
  ]
)
