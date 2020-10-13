class CreateAgences < ActiveRecord::Migration[5.2]
  def change
    create_table :agences do |t|
      t.string :name
      t.string :code_agence
      t.references :banque, foreign_key: true

      t.timestamps
    end
  end
end
