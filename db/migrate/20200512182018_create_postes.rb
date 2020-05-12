class CreatePostes < ActiveRecord::Migration[5.2]
  def change
    create_table :postes do |t|
      t.date :date_debut
      t.date :date_fin
      t.string :nom_ecriture
      t.bigint :capital
      t.bigint :cumul_retenu
      t.bigint :montant

      t.timestamps
    end
  end
end
