class CreateAdministratives < ActiveRecord::Migration[5.2]
  def change
    create_table :administratives do |t|
      t.references :agent, foreign_key: true

      t.timestamps
    end
  end
end
