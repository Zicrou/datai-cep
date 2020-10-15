class AddNumCompteBancaireToAgent < ActiveRecord::Migration[5.2]
  def change
    add_column :agents, :numcomptebancaire, :string
  end
end
