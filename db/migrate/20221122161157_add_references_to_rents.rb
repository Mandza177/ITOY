class AddReferencesToRents < ActiveRecord::Migration[7.0]
  def change
    remove_column :rents, :user_id, :integer
    remove_column :rents, :object_id, :integer
    add_reference :rents, :user, foreign_key: true
    add_reference :rents, :toy, foreign_key: true
  end
end
