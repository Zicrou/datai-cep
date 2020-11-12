class CreateEtablissements < ActiveRecord::Migration[5.2]
  def change
    create_table :etablissements do |t|
      t.string :nom
      t.string :code

      t.timestamps
    end
  end
end
