class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.bigint :indice_grade
      t.bigint :code_grade
      t.string :name

      t.timestamps
    end
  end
end
