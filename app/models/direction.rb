class Direction < ApplicationRecord
  belongs_to :etablissement

  has_many :services

  validates_presence_of :name, :etablissement_id
end
