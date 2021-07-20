require_relative '../models/livro.rb'

get('/livros/nao-publicados'){
  result = Livro.where(publicado: 0)
  halt(200, result.to_json)
}

get '/livros/editora=:num' do |n|
  result = Livro.where(editora_id: n)
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

delete '/excluir/livro/id=:id' do |n|
  Livro.destroy_by(id: n)
  "Livro excluido"
  rescue Exception => e
  halt(500, {error: e.message}.to_json)
end 

#Livro.create(nome: "Teste livro", publicado: 1, editora_id: 1)