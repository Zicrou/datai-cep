class CreateAgents < ActiveRecord::Migration[5.2]
  def change
    create_table :agents do |t|
      t.string :matricule
      t.sting :nom
      t.string :prenom
      t.enum :titre
      t.enum :sex
      t.date :date_de_naissance
      t.date :date_en_cours
      t.date :date_recrutement
      t.string :lieu_de_naissance
      t.string :nationalite
      t.int :code_femme_marie
      t.string :nom_du_mari

      t.timestamps
    end
  end
end
