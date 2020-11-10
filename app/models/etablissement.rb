class Etablissement < ApplicationRecord
    belongs_to :region
    belongs_to :typedetablissement

    validates_presence_of :nom, :code, :typedetablissement_id, :region_id
end
