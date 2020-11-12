class Region < ApplicationRecord
    has_many :departements
    has_many :etablissements

    validates_presence_of :name
end
