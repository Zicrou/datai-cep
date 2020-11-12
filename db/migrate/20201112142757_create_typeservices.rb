class CreateTypeservices < ActiveRecord::Migration[5.2]
  def change
    create_table :typeservices do |t|
      t.string :name

      t.timestamps
    end
  end
end
