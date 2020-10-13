class CreateModePaiements < ActiveRecord::Migration[5.2]
  def change
    create_table :mode_paiements do |t|
      t.string :name

      t.timestamps
    end
  end
end
