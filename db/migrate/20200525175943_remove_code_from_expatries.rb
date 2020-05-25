class RemoveCodeFromExpatries < ActiveRecord::Migration[5.2]
  def change
    remove_column :expatries, :code, :int
  end
end
