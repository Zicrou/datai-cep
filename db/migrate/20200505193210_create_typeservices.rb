class CreateTypeservices < ActiveRecord::Migration[5.2]
  def change
    create_table :typeservices do |t|
      t.string :name
      t.references :direction, foreign_key: true

      t.timestamps
    end
  end
end
