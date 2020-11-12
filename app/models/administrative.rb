class Administrative < ApplicationRecord
  belongs_to :agent
  belongs_to :region
  belongs_to :typedetablissement
  belongs_to :etablissement
  belongs_to :direction
  belongs_to :service
  belongs_to :emploi
  belongs_to :postedepaie
  belongs_to :echellon
  belongs_to :corp
  belongs_to :grade
  
  validates_presence_of :agent_id, :region_id, :typedetablissement_id, :etablissement_id, :direction_id, :service_id, :emploi_id, :postedepaie_id, :echellon_id, :corp_id, :grade_id
end
