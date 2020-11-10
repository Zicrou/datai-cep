class AddTypedetablissementRegionRefsToEtablissement < ActiveRecord::Migration[5.2]
  def change
    add_reference  :etablissements, :typedetablissement, foreign_key: true
    add_reference  :etablissements, :region, foreign_key: true

  end
end
