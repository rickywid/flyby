class AddDateToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :date, :date
  end
end
