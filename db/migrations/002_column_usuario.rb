require 'active_record'

class AdcAniversarioUsuario< ActiveRecord::Migration[6.0]
  def change
    add_column :usuarios, :aniversario, :date
  end
end

# adicionar_coluna = AdcAniversarioUsuario.new
# adicionar_coluna.change