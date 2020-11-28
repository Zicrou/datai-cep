class AddEtablissementRefsToService < ActiveRecord::Migration[5.2]
  def change
    add_reference :services, :etablissement, foreign_key: true
  end
end
