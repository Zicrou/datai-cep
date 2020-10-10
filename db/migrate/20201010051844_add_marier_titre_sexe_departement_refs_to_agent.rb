class AddMarierTitreSexeDepartementRefsToAgent < ActiveRecord::Migration[5.2]
  def change
    add_reference :agents, :marier, foreign_key: true
    add_reference :agents, :titre, foreign_key: true
    add_reference :agents, :sexe, foreign_key: true
    add_reference :agents, :departement, foreign_key: true
  end
end
