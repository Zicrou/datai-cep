class Echellon < ApplicationRecord
    belongs_to :clase

    #has_one :indice

    validates_presence_of :code, :clase_id
    
end
