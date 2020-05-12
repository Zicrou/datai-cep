class CreateExpatries < ActiveRecord::Migration[5.2]
  def change
    create_table :expatries do |t|
      t.int :code
      t.string :name

      t.timestamps
    end
  end
end
