class RemoveDepartementsFromAgent < ActiveRecord::Migration[5.2]
  def change
    remove_index :agents, :departement_id
    remove_column :agents, :departement_id
  end
end
