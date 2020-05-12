class Etablissement < ApplicationRecord
  belongs_to :region
  belongs_to :departement
end
