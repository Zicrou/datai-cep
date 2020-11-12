class CreateTypedetablissements < ActiveRecord::Migration[5.2]
  def change
    create_table :typedetablissements do |t|
      t.string :nom
      t.string :code

      t.timestamps
    end
  end
end
