class Indice < ApplicationRecord
    has_many :grades

    validates_presence_of :name
end
