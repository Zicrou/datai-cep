class Region < ApplicationRecord
    has_many :departements

    validates_presence_of :name
end
