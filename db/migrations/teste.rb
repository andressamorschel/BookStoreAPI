require 'active_record'

class Teste < ActiveRecord::Migration[6.0]
  def change
    create_table :teste_tabela do |t|
      t.string :nome
      t.float :valor

      t.timestamps
    end
  end
end

# teste2 = Teste.new
# teste2.change