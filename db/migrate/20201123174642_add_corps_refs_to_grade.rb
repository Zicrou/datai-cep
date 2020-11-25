class AddCorpsRefsToGrade < ActiveRecord::Migration[5.2]
  def change
    add_reference :grades, :corp, foreign_key: true
  end
end
