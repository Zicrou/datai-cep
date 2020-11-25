class RemoveDepartementFromAgent < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :agents, column: :departement_id 
  end
end
