class AddLatitudeAndLongitudeToAccomodaitons < ActiveRecord::Migration
  def change
    add_column :accomodations, :latitude, :float
    add_column :accomodations, :longitude, :float
  end
end
