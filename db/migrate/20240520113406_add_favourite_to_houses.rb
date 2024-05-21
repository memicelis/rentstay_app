class AddFavouriteToHouses < ActiveRecord::Migration[7.1]
  def change
    add_column :houses, :favourite, :boolean
  end
end
