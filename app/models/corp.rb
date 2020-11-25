class Corp < ApplicationRecord
    #belongs_to :grade
    
    validates_presence_of :code, :name
end
