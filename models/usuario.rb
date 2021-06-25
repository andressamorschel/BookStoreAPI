require 'sinatra'
require 'active_record'
require_relative '../app.rb'

class Usuario < ActiveRecord::Base
end

get('/consulta/usarios'){
  result = Usuario.all.as_json
  halt(200, result.to_json)
}

get '/registrar/usuario/nome=:name' do |n|
  Usuario.create(
    [
      {:nome => n}
    ]
  )
  "Usuario criado"
end

get '/excluir/usuario/id=:n' do |n|
  Usuario.destroy_by(id: n)
  "Usuário excluido"
end