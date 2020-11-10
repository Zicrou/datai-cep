class Service < ApplicationRecord
    belongs_to :direction

    validates_presence_of :name, :direction_id
end
