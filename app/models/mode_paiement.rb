class ModePaiement < ApplicationRecord
    has_many :agents

  validates_presence_of :name

end
