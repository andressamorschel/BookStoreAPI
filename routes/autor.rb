require_relative '../models/autor.rb'

get('/consulta/autores'){
  result = Autore.all.as_json
  halt(200, result.to_json)
}

delete '/excluir/autor/id=:id' do |n|
  Autore.destroy_by(id: n)
  "Autor excluido"
  rescue Exception => e
  halt(500, {error: e.message}.to_json)
end

