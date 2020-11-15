class AddIndiceRefsToAdministrative < ActiveRecord::Migration[5.2]
  def change
    add_reference :administratives, :indice, foreign_key: true
  end
end
