require 'sinatra'
require 'active_record'
require_relative '../app.rb'

class Livro < ActiveRecord::Base
end

def criar_registros
  Livro.create(
    [
      {:nome => 'Arquitetura Limpa',:publicado => 0, :id_editora => 7, :id_autor => 10},
      {:nome => 'Admirável Mundo Novo', :publicado => 0, :id_editora => 2, :id_autor => 5}
    ]
  )
end

def excluir_registro
  Livro.destroy_by(id: 26)
end

def atualizar_registro
  livro_clean_code = Livro.find_by(nome: 'Clean Code')
  livro_clean_code.update(id_editora: '7')
end  

get('/livros/nao-publicados'){
  result = Livro.where(publicado: 0)
  halt(200, result.to_json)
}

get '/livros/editora=:num' do |n|
  result = Livro.where(id_editora: n)
  halt(200, result.to_json)

end

get('/consulta/livros'){ 
  result = Livro.all.as_json
  halt(200, result.to_json)
}

get('/livros/publicados'){
  result = Livro.where(publicado: 1)
  halt(200, result.to_json)
}

get '/hello/:name' do |n|
  "Hello #{n}!"
end

