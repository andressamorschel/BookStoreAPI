require 'sinatra'
require 'sinatra/activerecord'
require 'pg'
require 'rake'

require_relative 'models/autor.rb'
require_relative 'models/livro.rb'
require_relative 'models/editora.rb'
require_relative 'models/usuario.rb'

require_relative 'routes/autor.rb'
require_relative 'routes/livro.rb'
require_relative 'routes/usuario.rb'
require_relative 'routes/editora.rb'
