class CreateResidences < ActiveRecord::Migration[5.2]
  def change
    create_table :residences do |t|
      t.bigint :code_residence
      t.string :name

      t.timestamps
    end
  end
end
