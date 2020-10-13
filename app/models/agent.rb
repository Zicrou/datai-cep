class Agent < ApplicationRecord
    belongs_to :marier
    belongs_to :titre
    belongs_to :sexe
    belongs_to :region
    belongs_to :departement
    belongs_to :mode_paiement

    validates_presence_of :matricule, :nom, :prenom, :date_naissance, :date_pec, :date_recrutement, :lieu_naissance, :nationalite, :email, :telephone, :adresse, :marier_id, :titre_id, :sexe_id, :region_id, :departement_id
end
