require_relative '../models/usuario.rb'

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