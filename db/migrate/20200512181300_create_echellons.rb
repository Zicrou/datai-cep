class CreateEchellons < ActiveRecord::Migration[5.2]
  def change
    create_table :echellons do |t|
      t.bigint :code
      t.string :name

      t.timestamps
    end
  end
end
