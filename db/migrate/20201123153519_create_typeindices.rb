class CreateTypeindices < ActiveRecord::Migration[5.2]
  def change
    create_table :typeindices do |t|
      t.string :name

      t.timestamps
    end
  end
end
