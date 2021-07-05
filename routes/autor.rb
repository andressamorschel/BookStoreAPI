require_relative '../models/autor.rb'

get('/consulta/autores'){
  result = Autor.all.as_json
  halt(200, result.to_json)
}

delete '/excluir/autor/id=:id' do |n|
  Autor.destroy_by(id: n)
  "Autor excluido"
  rescue Exception => e
  halt(500, {error: e.message}.to_json)
end

# Autor.create(nome: "JK", data_nascimento: '1968-12-06')
# Autor.create(nome: "Clarice Lispector", data_nascimento: '1977-06-18')
