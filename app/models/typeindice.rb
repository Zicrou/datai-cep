class Typeindice < ApplicationRecord
    has_many :indices

    validates_presence_of :name
end
