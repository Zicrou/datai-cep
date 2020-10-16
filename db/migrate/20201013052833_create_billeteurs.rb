class CreateBilleteurs < ActiveRecord::Migration[5.2]
  def change
    create_table :billeteurs do |t|
      t.string :code
      t.string :nom_billeteur
      t.string :matricule

      t.timestamps
    end
  end
end
