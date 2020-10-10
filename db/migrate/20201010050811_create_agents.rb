class CreateAgents < ActiveRecord::Migration[5.2]
  def change
    create_table :agents do |t|
      t.string :matricule
      t.string :nom
      t.string :prenom
      t.date :date_naissance
      t.date :date_pec
      t.date :date_recrutement
      t.string :lieu_naissance
      t.string :nationalite
      t.string :email
      t.string :telephone
      t.string :adresse

      t.timestamps
    end
  end
end
