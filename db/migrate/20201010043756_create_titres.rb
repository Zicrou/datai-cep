class CreateTitres < ActiveRecord::Migration[5.2]
  def change
    create_table :titres do |t|
      t.string :name

      t.timestamps
    end
  end
end
