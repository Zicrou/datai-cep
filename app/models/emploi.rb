class Emploi < ApplicationRecord
    belongs_to :service
    
    validates_presence_of :name, :service_id

end
