require 'active_record'

class MarcadorPagina < ActiveRecord::Base
  validates :nome, presence: true, length: { minimum: 5 }
end 