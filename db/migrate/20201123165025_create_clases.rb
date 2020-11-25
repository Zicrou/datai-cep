class CreateClases < ActiveRecord::Migration[5.2]
  def change
    create_table :clases do |t|
      t.string :name
      t.references :echellon, foreign_key: true

      t.timestamps
    end
  end
end
