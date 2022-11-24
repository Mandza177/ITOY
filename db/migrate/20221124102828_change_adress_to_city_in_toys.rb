class ChangeAdressToCityInToys < ActiveRecord::Migration[7.0]
  def change
    remove_column :toys, :address, :string
    add_column :toys, :city, :string
  end
end
