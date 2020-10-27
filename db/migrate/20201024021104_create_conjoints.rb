class CreateConjoints < ActiveRecord::Migration[5.2]
  def change
    create_table :conjoints do |t|
      t.string :nom
      t.string :prenom
      t.string :photo_certificat_mariage
      t.references :agent, foreign_key: true

      t.timestamps
    end
  end
end
