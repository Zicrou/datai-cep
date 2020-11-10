class CreateEchellons < ActiveRecord::Migration[5.2]
  def change
    create_table :echellons do |t|
      t.string :code

      t.timestamps
    end
  end
end
