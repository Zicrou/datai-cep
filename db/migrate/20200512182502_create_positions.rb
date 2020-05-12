class CreatePositions < ActiveRecord::Migration[5.2]
  def change
    create_table :positions do |t|
      t.int :code
      t.string :name
      t.date :date_debut_position
      t.date :date_fin_position
      t.date :date_annulation_position

      t.timestamps
    end
  end
end
