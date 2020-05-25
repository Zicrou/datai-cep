class AddCodeToExpatries < ActiveRecord::Migration[5.2]
  def change
    add_column :expatries, :code, :integer
  end
end
