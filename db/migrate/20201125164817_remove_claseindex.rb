class RemoveClaseindex < ActiveRecord::Migration[5.2]
  def change
    remove_index :clases, :echellon_id
    remove_column :clases, :echellon_id
  end
end
