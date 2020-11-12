class Service < ApplicationRecord
    belongs_to :direction
    
    has_many :emplois

    validates_presence_of :name, :direction_id
end
