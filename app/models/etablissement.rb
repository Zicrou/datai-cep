class Etablissement < ApplicationRecord
    belongs_to :region
    belongs_to :typedetablissement

    has_many :directions

    validates_presence_of :nom, :code, :typedetablissement_id, :region_id
end
