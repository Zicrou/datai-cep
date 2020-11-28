class Service < ApplicationRecord
    belongs_to :etablissement
    
    has_many :emplois

    validates_presence_of :name, :etablissement_id
end
