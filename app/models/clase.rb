class Clase < ApplicationRecord
  #belongs_to :grade

  #has_many :echellons

  validates_presence_of :name, :echellon_id
end
