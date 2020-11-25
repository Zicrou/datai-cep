class AddEchellonToIndice < ActiveRecord::Migration[5.2]
  def change
    add_reference :indices, :echellon, foreign_key: true
  end
end
