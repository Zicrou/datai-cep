class Banque < ApplicationRecord
    has_many :agents

  validates_presence_of :name, :code

end
