class Grade < ApplicationRecord
  belongs_to :indice

  validates_presence_of :code, :indice_id
end
