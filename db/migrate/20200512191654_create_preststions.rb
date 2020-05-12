class CreatePreststions < ActiveRecord::Migration[5.2]
  def change
    create_table :preststions do |t|
      t.int :code
      t.string :name

      t.timestamps
    end
  end
end
