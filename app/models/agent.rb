class Agent < ApplicationRecord
    belongs_to :marier
    belongs_to :titre
    belongs_to :sexe
    belongs_to :region
    belongs_to :departement
    belongs_to :mode_paiement
    belongs_to :banque, optional: :true
    belongs_to :agence, optional: :true
    belongs_to :billeteur, optional: :true
    
    has_many :enfants
    has_many :conjoints

    validates_presence_of :matricule, :nom, :prenom, :date_naissance, :date_recrutement, :lieu_naissance, :nationalite, :email, :telephone, :adresse, :marier_id, :titre_id, :sexe_id, :region_id, :mode_paiement_id
end
