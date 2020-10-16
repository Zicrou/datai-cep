class AddBanqueAgenceBileteurIdToAgent < ActiveRecord::Migration[5.2]
  def change
    add_reference :agents, :banque, foreign_key: true
    add_reference :agents, :agence, foreign_key: true
    add_reference :agents, :billeteur, foreign_key: true
  end
end
