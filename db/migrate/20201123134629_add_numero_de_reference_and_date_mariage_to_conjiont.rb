class AddNumeroDeReferenceAndDateMariageToConjiont < ActiveRecord::Migration[5.2]
  def change
    add_column :conjoints, :numero_de_reference, :string
    add_column :conjoints, :date_mariage, :date

  end
end
