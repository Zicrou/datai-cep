class Typedetablissement < ApplicationRecord
    #has_many :etablissements

    validates_presence_of :nom, :code
end
