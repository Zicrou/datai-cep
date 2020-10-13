class AddModepaimentToAgent < ActiveRecord::Migration[5.2]
  def change
    add_reference  :agents, :mode_paiement, foreign_key: true
  end
end
