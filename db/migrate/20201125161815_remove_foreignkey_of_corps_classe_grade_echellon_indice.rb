class RemoveForeignkeyOfCorpsClasseGradeEchellonIndice < ActiveRecord::Migration[5.2]
  def change
    remove_index :indices, :echellon_id
    remove_column :indices, :echellon_id

    remove_index :echellons, :clase_id
    remove_column :echellons, :clase_id

    remove_index :grades, :corp_id
    remove_column :grades, :corp_id

    remove_index :grades, :clase_id
    remove_column :grades, :clase_id

   
  end
end
