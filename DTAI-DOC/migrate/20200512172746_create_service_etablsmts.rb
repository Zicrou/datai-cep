class CreateServiceEtablsmts < ActiveRecord::Migration[5.2]
  def change
    create_table :service_etablsmts do |t|
      t.string :name
      t.string :etablissement

      t.timestamps
    end
  end
end
