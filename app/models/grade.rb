class Grade < ApplicationRecord
  has_many :corps
  has_many :clases

  #belongs_to : administrative

  validates_presence_of :code, :clase_id, :corp_id
end
