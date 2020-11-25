class RemoveGradeFromIndice < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :grades, column: :indice_id
  end
end
