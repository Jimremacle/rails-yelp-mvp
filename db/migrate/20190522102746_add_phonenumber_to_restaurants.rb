class AddPhonenumberToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :chef, :string
  end
end
