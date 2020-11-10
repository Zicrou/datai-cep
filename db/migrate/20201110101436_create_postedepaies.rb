class CreatePostedepaies < ActiveRecord::Migration[5.2]
  def change
    create_table :postedepaies do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
