require_relative '../models/usuario.rb'

get('/consulta/usuario'){
  result = Usuario.all.as_json
  halt(200, result.to_json)
}

post '/registrar/usuario/nome=:name' do |n|
  Usuario.create(
    [
      {:nome => n}
    ]
  )
  "Usuario criado"
end

delete '/excluir/usuario/id=:n' do |n|
  Usuario.destroy_by(id: n)
  rescue Exception => e
  halt(500, {error: e.message}.to_json)
end
