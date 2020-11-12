class Billeteur < ApplicationRecord
    has_many :agents

  validates_presence_of :nom_billeteur, :code, :matricule

end
