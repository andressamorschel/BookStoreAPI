require_relative '../models/editora.rb'

# Editora.create (
#   [
#     {:nome => 'Campanhia das letras'},
#     {:nome => 'Aleph'},
#     {:nome => 'Rocco'}
#   ]
#)

get('/consulta/editoras'){
  result = Editora.all.as_json
  halt(200, result.to_json)
}

delete '/excluir/editora/id=:id' do |n|
  Editora.destroy_by(id: n)
  "Editora Excluida"
end  

Editora.create(
  [
    {:nome => 'Testee'}
  ]
)