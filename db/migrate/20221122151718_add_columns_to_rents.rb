class AddColumnsToRents < ActiveRecord::Migration[7.0]
  def change
    add_column :rents, :user_id, :integer
    add_column :rents, :object_id, :integer
    add_column :rents, :start_date, :string
    add_column :rents, :end_date, :string
    add_column :rents, :total_price, :integer
    add_column :rents, :acceptation, :string
  end
end
