class AddClaseRefsToEchellon < ActiveRecord::Migration[5.2]
  def change
    add_reference :echellons, :clase, foreign_key: true
  end
end
