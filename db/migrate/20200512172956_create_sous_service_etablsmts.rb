class CreateSousServiceEtablsmts < ActiveRecord::Migration[5.2]
  def change
    create_table :sous_service_etablsmts do |t|
      t.string :name
      t.references :service_etablsmt, foreign_key: true

      t.timestamps
    end
  end
end
