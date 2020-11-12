class Enfant < ApplicationRecord
  belongs_to :agent

  validates_presence_of :nom, :prenom, :date_naissance, :agent_id
end
