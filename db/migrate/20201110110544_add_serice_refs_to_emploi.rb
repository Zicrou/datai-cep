class AddSericeRefsToEmploi < ActiveRecord::Migration[5.2]
  def change
    add_reference :emplois, :service, foreign_key: true
  end
end
