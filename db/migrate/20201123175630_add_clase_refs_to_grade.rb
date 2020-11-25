class AddClaseRefsToGrade < ActiveRecord::Migration[5.2]
  def change
    add_reference :grades, :clase, foreign_key: true
  end
end
