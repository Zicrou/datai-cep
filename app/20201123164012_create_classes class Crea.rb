20201123164012_create_classes class CreateClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :classes do |t|
      t.string :name
      t.references :echellon, foreign_key: true

      t.timestamps
    end
  end
end
