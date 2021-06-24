require 'sinatra'
require 'active_record'
require_relative '../app.rb'

class Livro < ActiveRecord::Base
end

get('/consulta/livros'){ 
  result = Livro.all.as_json
  halt(200, result.to_json)
}

Livro.create(
  [
    {:nome => 'Arquitetura Limpa',:publicado => 0, :id_editora => 7, :id_autor => 10},
    {:nome => 'Admirável Mundo Novo', :publicado => 0, :id_editora => 2, :id_autor => 5}
  ]
)
