require 'active_record'

class CriarProduto < ActiveRecord::Migration[6.0]
  def change
    create_table :marcador_pagina do |t|
      t.string :nome
      t.float :valor

      t.timestamps
    end
  end
end
# adicionar_marcador = CriarProduto.new
# adicionar_marcador.change

#ver amanha
# class AdicionarColunaCorMarcadorPagina < ActiveRecord::Migration[6.0]
#   def change
#     add_column :cor, :string
#   end
# end

# adicinar_cor = AdicionarColunaCorMarcadorPagina.new
# adicinar_cor.change