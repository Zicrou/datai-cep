class AddRegionTypeetablissementEtablissementDirectionServiceEmploiPostedepaieEchellonCorpsGradeToAdministrative < ActiveRecord::Migration[5.2]
  def change
    add_reference :administratives, :region, foreign_key: true
    add_reference :administratives, :typedetablissement, foreign_key: true
    add_reference :administratives, :etablissement, foreign_key: true
    add_reference :administratives, :service, foreign_key: true
    add_reference :administratives, :emploi, foreign_key: true
    
  end
end
