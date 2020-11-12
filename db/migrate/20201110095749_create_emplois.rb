class CreateEmplois < ActiveRecord::Migration[5.2]
  def change
    create_table :emplois do |t|
      t.string :name

      t.timestamps
    end
  end
end
