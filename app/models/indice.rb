class Indice < ApplicationRecord
    #has_many :grades
    belongs_to :typeindice
    belongs_to :echellon
    validates_presence_of :name, :typeindice_id, :echellon_id
end
