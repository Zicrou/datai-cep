class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.string :code
      t.references :indice, foreign_key: true

      t.timestamps
    end
  end
end
