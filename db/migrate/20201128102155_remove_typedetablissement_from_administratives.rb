class RemoveTypedetablissementFromAdministratives < ActiveRecord::Migration[5.2]
  def change
    remove_reference :administratives, :typedetablissement, foreign_key: true
    #remove_column :administratives, :typedetablissement, :bigint
    
  end
end
