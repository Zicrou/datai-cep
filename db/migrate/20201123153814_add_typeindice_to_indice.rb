class AddTypeindiceToIndice < ActiveRecord::Migration[5.2]
  def change
    add_reference :indices, :typeindice, foreign_key: true
  end
end
