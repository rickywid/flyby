class AddCityAndAddressToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :city, :string
    add_column :locations, :address, :string
  end
end
