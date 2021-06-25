require_relative '../models/editora.rb'

Editora.create(
  [
    {:nome => 'Campanhia das letras'},
    {:nome => 'Aleph'},
    {:nome => 'Rocco'}
  ]
)

get('/consulta/editoras'){
  result = Editora.all.as_json
  halt(200, result.to_json)
}

