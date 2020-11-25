class Conjoint < ApplicationRecord
  belongs_to :agent

  validates_presence_of :nom, :prenom, :photo_certificat_mariage, :numero_de_reference, :date_mariage, :agent_id

end
