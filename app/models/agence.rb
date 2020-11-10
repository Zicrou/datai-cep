class Agence < ApplicationRecord
  belongs_to :banque

  validates_presence_of :name, :code_agence, :banque_id
end
