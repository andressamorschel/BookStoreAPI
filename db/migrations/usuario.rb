# class AdicionarColunaUsuario < ActiveRecord::Migration[6.0]
#   def change
#     add_column :aniversario, :date
#   end
# end

class AddPartNumberToUsuario< ActiveRecord::Migration[6.0]
  def change
    add_column :products, :part_number, :string
  end
end
