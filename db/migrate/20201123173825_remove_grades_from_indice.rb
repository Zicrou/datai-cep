class RemoveGradesFromIndice < ActiveRecord::Migration[5.2]
  def change
    remove_index :grades, :indice_id
    remove_column :grades, :indice_id
  end
end
