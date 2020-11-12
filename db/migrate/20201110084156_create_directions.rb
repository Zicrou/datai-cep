class CreateDirections < ActiveRecord::Migration[5.2]
  def change
    create_table :directions do |t|
      t.string :name
      t.references :etablissement, foreign_key: true

      t.timestamps
    end
  end
end
