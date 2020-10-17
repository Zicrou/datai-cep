class CreateEnfants < ActiveRecord::Migration[5.2]
  def change
    create_table :enfants do |t|
      t.string :nom
      t.string :prenom
      t.date :date_naissance
      t.references :agent, foreign_key: true

      t.timestamps
    end
  end
end
