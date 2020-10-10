class Departement < ApplicationRecord
  belongs_to :region

  validates_presence_of :name, :region_id
end
